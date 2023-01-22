
import 'package:annotations/annotations.dart';
part 'todo.g.dart';

@copy
class Todo {
  final int id;
  final String note;
  final DateTime date;

  Todo({required this.id, required this.date, required this.note});
}