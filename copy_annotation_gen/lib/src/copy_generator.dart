import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:copy_annotation/copy_annotation.dart';
import 'package:copy_annotation_gen/src/model_visitor.dart';
import 'package:source_gen/source_gen.dart';

class CopyGenerator extends GeneratorForAnnotation<CopyAnnotation> {
  @override
  String generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final buffer = StringBuffer();
    String extName = '${visitor.className}CopyExt';
    buffer.writeln("extension $extName on ${visitor.className} {");
    buffer.writeln("${visitor.className} copy ({");
    for (var element in visitor.fields.entries) {
      buffer.writeln("${element.value}? ${element.key},");
    }
    buffer.writeln("}) {");
    buffer.writeln("return ${visitor.className}(");
    for (var element in visitor.fields.entries) {
      buffer.writeln("${element.key}: ${element.key} ?? this.${element.key},");
    }
    buffer.writeln(");");
    buffer.writeln("}");
    buffer.writeln("}");
    return buffer.toString();
  }
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
