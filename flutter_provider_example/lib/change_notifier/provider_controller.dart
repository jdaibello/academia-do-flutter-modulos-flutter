import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar =
      'https://pubimg.band.uol.com.br/files/8d94030fb052a6b983ca.png';
  String birthDate = 'Data';

  void alterarDados() {
    name = 'Max Verstappen';
    imgAvatar = 'https://pubimg.band.uol.com.br/files/8d94030fb052a6b983ca.png';
    birthDate = '30/09/1997';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Academia do Flutter';
    notifyListeners();
  }
}
