
import 'package:copy_annotation/copy_annotation.dart';
part 'todo.g.dart';

@copy
class Todo {
  final int id;
  final String note;
  final DateTime date;

  Todo({required this.id, required this.date, required this.note});
}
