import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
class CopyAnnotation {
  const CopyAnnotation();
}

const copy = CopyAnnotation();