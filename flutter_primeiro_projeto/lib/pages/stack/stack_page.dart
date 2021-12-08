import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Container(
          //     width: 150,
          //     height: 150,
          //     color: Colors.red,
          //   ),
          // ),
          Positioned(
            // top: 40,
            right: 100,
            bottom: 10,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
