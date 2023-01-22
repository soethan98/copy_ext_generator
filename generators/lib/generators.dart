library generators;

import 'package:build/build.dart';
import 'package:generators/src/copy_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateCopyExtension(BuilderOptions options) => SharedPartBuilder(
      [CopyGenerator()],
      'copy_generator',
    );
