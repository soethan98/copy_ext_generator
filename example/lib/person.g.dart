// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// CopyGenerator
// **************************************************************************

extension PersonCopyExt on Person {
  Person copy({
    String? id,
    String? name,
    String? job,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      job: job ?? this.job,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      id: json['id'] as String,
      job: json['job'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
    };
