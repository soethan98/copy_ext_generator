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

[![Pub Package](https://img.shields.io/pub/v/copy_annotation.svg)](https://pub.dev/packages/copy_annotation)


"copy_annotation" is a annotation based code generation package for Flutter that generates a copyWith method with extension functions for immutable classes.
Work together with [copy_annotation_gen](https://pub.dev/packages/copy_annotation_gen) to generate code.

# Usage

```yaml
dependencies:
  copy_annotation: ^latest_version
```

Then, you need to add the following dependencies for code generation:

```yaml
dev_dependencies:
  build_runner: ^latest_version
  copy_annotation_gen: ^latest_version

```



# Example 
```dart

@copy
class Employee {
    final int id;
    final String name;

    Employee({required this.id,required this.name})

}


final emp1 = Employee(id:1,name:"John");
final emp2 = emp1.copy(id:2,name:"Mina");
```


