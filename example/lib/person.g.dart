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
    double? salary,
    List<int?>? bankAccounts,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      job: job ?? this.job,
      salary: salary ?? this.salary,
      bankAccounts: bankAccounts ?? this.bankAccounts,
    );
  }
}
