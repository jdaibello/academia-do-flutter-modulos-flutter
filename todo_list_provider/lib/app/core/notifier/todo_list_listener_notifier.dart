import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:todo_list_provider/app/core/notifier/todo_list_change_notifier.dart';
import 'package:todo_list_provider/app/core/ui/messages.dart';

class TodoListListenerNotifier {
  final TodoListChangeNotifier changeNotifier;

  TodoListListenerNotifier({required this.changeNotifier});

  void listener({
    required BuildContext context,
    required SuccessVoidCallback successCallback,
    ErrorVoidCallback? errorCallback,
  }) {
    changeNotifier.addListener(() {
      if (changeNotifier.loading) {
        Loader.show(context);
      } else {
        Loader.hide();
      }

      if (changeNotifier.hasError) {
        if (errorCallback != null) {
          errorCallback(changeNotifier, this);
        }
        Messages.of(context).showError(changeNotifier.error ?? 'Erro interno');
      } else if (changeNotifier.isSuccess) {
        successCallback(changeNotifier, this);
      }
    });
  }

  void dispose() {
    changeNotifier.removeListener(() {});
  }
}

typedef SuccessVoidCallback = void Function(
  TodoListChangeNotifier notifier,
  TodoListListenerNotifier listenerInstance,
);

typedef ErrorVoidCallback = void Function(
  TodoListChangeNotifier notifier,
  TodoListListenerNotifier listenerInstance,
);
