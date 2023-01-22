library generators;

import 'package:build/build.dart';
import 'package:copy_annotation_gen/src/copy_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateCopyExtension(BuilderOptions options) => SharedPartBuilder(
      [CopyGenerator()],
      'copy_generator',
    );
