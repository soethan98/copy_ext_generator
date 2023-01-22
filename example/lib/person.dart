import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@copy
@JsonSerializable()
class Person {

  final String id;
  final String name;
  final String job;

  Person({required this.id, required this.job, required this.name});
}




