import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.red;
    // final cor = Colors.red.withOpacity(0.5);
    // const cor = Color.fromRGBO(0, 0, 225, 1);
    const cor = Color(0xFF17599D);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          color: cor,
        ),
      ),
    );
  }
}
