import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ModelVisitor extends SimpleElementVisitor<void> {
  final Map<String, dynamic> fields = {};
  String className = '';

  @override
  void visitConstructorElement(ConstructorElement element) {
    final returnType = element.returnType.toString();
    className = returnType.replaceFirst('*', '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    final post = element.type
        .toString()
        .lastIndexOf(RegExp(r'\?|\*'))
        .clamp(0, element.type.toString().length);
    fields[element.name] =
        element.type.toString().replaceFirst(RegExp(r'\?|\*'), '', post);
  }
}
