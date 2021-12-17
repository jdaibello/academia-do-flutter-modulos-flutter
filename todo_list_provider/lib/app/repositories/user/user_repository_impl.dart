import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_list_provider/app/exception/auth_exception.dart';
import 'package:todo_list_provider/app/repositories/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepositoryImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> register(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      if (e.code == 'email-already-in-use') {
        final loginTypes =
            await _firebaseAuth.fetchSignInMethodsForEmail(email);
        if (loginTypes.contains('password')) {
          throw AuthException(
            message: 'E-mail já utilizado, por favor escolha outro e-mail',
          );
        } else {
          throw AuthException(
            message:
                'Você se cadastrou no TodoList pelo Google, por favor utilize ele para entrar',
          );
        }
      } else {
        throw AuthException(message: e.message ?? 'Erro ao registrar usuário');
      }
    }
  }

  @override
  Future<User?> login(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on PlatformException catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      throw AuthException(message: e.message ?? 'Erro ao realizar login');
    } on FirebaseAuthException catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      if (e.code == 'wrong-password') {
        throw AuthException(message: 'E-mail ou senha inválidos');
      }
      throw AuthException(message: e.message ?? 'Erro ao realizar login');
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final loginMethods =
          await _firebaseAuth.fetchSignInMethodsForEmail(email);

      if (loginMethods.contains('password')) {
        await _firebaseAuth.sendPasswordResetEmail(email: email);
      } else if (loginMethods.contains('google')) {
        throw AuthException(
          message:
              'Cadastro realizado com o Google, a senha não pode ser resetada',
        );
      } else {
        throw AuthException(message: 'E-mail não cadastrado');
      }
    } on PlatformException catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      throw AuthException(message: 'Erro ao resetar senha');
    }
  }

  @override
  Future<User?> googleLogin() async {
    List<String>? loginMethods;

    try {
      final googleSignIn = GoogleSignIn();
      final googleUser = await googleSignIn.signIn();

      if (googleUser != null) {
        loginMethods = await _firebaseAuth.fetchSignInMethodsForEmail(
          googleUser.email,
        );
        if (loginMethods.contains('password')) {
          throw AuthException(
            message:
                'Você utilizou o e-mail para cadastro no Todo List, caso tenha esquecido sua senha por favor clique no link "Esqueceu sua senha?"',
          );
        } else {
          final googleAuth = await googleUser.authentication;
          final firebaseCredential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );
          var userCredential = await _firebaseAuth.signInWithCredential(
            firebaseCredential,
          );
          return userCredential.user;
        }
      }
    } on FirebaseAuthException catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      if (e.code == 'account-exists-with-different-credential') {
        throw AuthException(
          message: '''
            Login inválido, você se registrou no Todo List com seguintes provedores: 
            ${loginMethods?.join(',')}
        ''',
        );
      } else {
        throw AuthException(message: 'Erro ao realizar login');
      }
    } on Exception catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      throw AuthException(message: 'Erro ao realizar login');
    }
  }

  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
    _firebaseAuth.signOut();
  }

  @override
  Future<void> updateDisplayName(String name) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.updateDisplayName(name);
      user.reload();
    }
  }
}
