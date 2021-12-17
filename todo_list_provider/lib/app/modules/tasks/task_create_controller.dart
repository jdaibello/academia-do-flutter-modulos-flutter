import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/notifier/todo_list_change_notifier.dart';
import 'package:todo_list_provider/app/services/tasks/tasks_service.dart';

class TaskCreateController extends TodoListChangeNotifier {
  final TasksService _tasksService;
  DateTime? _selectedDate;

  TaskCreateController({required TasksService tasksService})
      : _tasksService = tasksService;

  set selectedDate(DateTime? selectedDate) {
    resetState();
    _selectedDate = selectedDate;
    notifyListeners();
  }

  DateTime? get selectedDate => _selectedDate;

  Future<void> save(String description) async {
    try {
      showLoadingAndResetState();
      notifyListeners();
      if (_selectedDate != null) {
        await _tasksService.save(_selectedDate!, description);
        success();
      } else {
        setError('Data da tarefa não selecionada');
      }
    } catch (e, s) {
      debugPrint('$e');
      debugPrint('$s');
      setError('Erro ao cadastrar tarefa');
    } finally {
      hideLoading();
      notifyListeners();
    }
  }
}
