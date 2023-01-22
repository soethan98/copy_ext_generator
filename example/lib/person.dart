import 'package:annotations/annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';


@copy
@JsonSerializable()
class Person {
  final String id;
  final String name;
  final String job;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  Person({required this.id, required this.job, required this.name});

 
}

// extension PersonCopyExt on Person {
//   Person copy({
//     String? id, 
//     String? job, 
//     String? name
//   }) {
//     return Person(
//       id: id ?? this.id,
//       job: job ?? this.job,
//       name: name ?? this.name
//     );
//   }
// }
