import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackbar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  action: SnackBarAction(
                    label: 'DESFAZER',
                    onPressed: () {
                      debugPrint('Clicado');
                    },
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
