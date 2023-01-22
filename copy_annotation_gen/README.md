<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


[![Pub Package](https://img.shields.io/pub/v/copy_annotation_gen.svg)](https://pub.dev/packages/copy_annotation_gen)

Generate `copy` extension for class that annotated with `@copy` from [copy_annotation](https://pub.dev/packages/copy_annotation). 


# Installation

``` yaml
dev_dependencies:
  ...
  build_runner: ^latest_version
  copy_annotation_gen: ^latest_version

  ```

  # Usage

  ```dart
part 'employee.g.dart'

@copy
class Employee {
    final int id;
    final String name;

    Employee({required this.id,required this.name})

}
  ```

and run 

```
flutter pub run build_runner build --delete-conflicting-outputs
```

