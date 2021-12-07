import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/custom_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return CustomDialog(context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      contentPadding: const EdgeInsets.all(10),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Título X'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Fechar Dialog'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Deseja realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              debugPrint('Salvo');
                              Navigator.of(context).pop();
                            },
                            child: const Text('Salvar'),
                          ),
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Deseja realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {
                              debugPrint('Salvo');
                              Navigator.of(context).pop();
                            },
                            child: const Text('Salvar'),
                          ),
                        ],
                      );
                    }
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.flutter_dash),
                  applicationName: 'Flutter Primeiro Projeto',
                  applicationVersion: '1.0.0',
                );
              },
              child: const Text('About Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CupertinoTimerPicker(
                        onTimerDurationChanged: (value) {},
                      );
                    },
                  );
                } else {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  debugPrint('O horário selecionado foi $selectedTime');
                }
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );

                debugPrint('A data selecionada foi $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
