import 'package:flutter/material.dart';

class CustomDialog extends Dialog {
  CustomDialog(BuildContext context, {Key? key})
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ),
          ),
          key: key,
        );
}
