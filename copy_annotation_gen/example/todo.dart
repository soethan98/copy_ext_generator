import 'package:copy_annotation/copy_annotation.dart';

@copy
class Todo {
  final String id;
  final String note;
  final DateTime dateTime;

  Todo({required this.id, required this.note, required this.dateTime});
}
