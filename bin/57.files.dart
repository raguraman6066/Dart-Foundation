import 'dart:io';

void main(List<String> args) async {
  //read and write
  var file = File("${Directory.current.path}/data.txt");
  if (await file.exists()) {
    // print(await file.readAsString());
    // print(file.readAsStringSync());reading
    file.writeAsString(
      "\nthis is new text from dart pad. ",
      mode: FileMode.append,
    ); //replace existing data.
  } else {
    print("file not found");
  }
  //create dir
  var curdir = Directory("${Directory.current.path}/Udemy1");
  // if (!await curdir.exists()) {
  if (await curdir.exists()) {
    // curdir.create(recursive: true);
    curdir.delete(recursive: false);
  } else {
    print("director already avilable");
  }
  var currentDir = Directory(Directory.current.path);
  if (currentDir.existsSync()) {
    await for (var path in currentDir.list(recursive: true)) {
      print(path);
    }
  } else {
    print("dir not found");
  }
}
