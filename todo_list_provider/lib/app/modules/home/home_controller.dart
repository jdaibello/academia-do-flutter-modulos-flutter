import 'package:todo_list_provider/app/core/notifier/todo_list_change_notifier.dart';
import 'package:todo_list_provider/app/models/task_filter_enum.dart';

class HomeController extends TodoListChangeNotifier {
  var filterSelected = TaskFilterEnum.today;
}
