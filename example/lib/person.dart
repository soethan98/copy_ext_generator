import 'package:copy_annotation/copy_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@copy
@JsonSerializable()
class Person {
  final String id;
  final String name;
  final String job;
  final double? salary;
  final List<int?>? bankAccounts;

  Person(
      {required this.id,
      required this.job,
      required this.name,
      this.salary = 0.0,
      this.bankAccounts});
}
