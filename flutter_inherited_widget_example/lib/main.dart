import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/home/home_page.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';
import 'package:flutter_inherited_widget_example/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Max Verstappen',
      imgAvatar:
          'https://img.redbull.com/images/c_crop,x_278,y_0,h_2126,w_2657/c_fill,w_400,h_320/q_auto,f_auto/redbullcom/2021/12/7/s8xihvlqkuzwtckcbzxn/motor-f1-max-verstappen-gp-arabia-saudita',
      birthDate: '30/09/1997',
      child: MaterialApp(
        title: 'Flutter Inherited Widget Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
