import 'dart:io';
import 'package:reflectable/reflectable.dart';

//Prototype loader. Untested as of now due to the lack of anything to test on.

@Reflectable()
class Reflector extends Reflectable {
  const Reflector() : super(invokingCapability);
}

const reflector = Reflector();

void loader() {
  String scriptsFolder = "c:/luxview/scripts/";

  var directory = Directory(scriptsFolder);
  var files = directory.listSync();

  for (var file in files) {
    if (file.path.endsWith(".dart")) {
      var lib = reflector.findLibrary(file.path);
      lib.invoke("main", []);
    }
  }
}
