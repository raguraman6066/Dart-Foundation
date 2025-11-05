import 'dart:convert';

void main(List<String> args) {
  Map<String, dynamic> studentInfo = {
    "rollNo": 1,
    "sname": "guest",
    "course": "ECE",
  };

  String studentJsonInfo = '''
  {
    "rollNo": 1,
    "sName": "guest",
    "course": "ECE"
  }
  
  ''';
  //map to json/string, json means..stringify or convert to string
  //json encoding - convert map to json
  String jsonInfo = jsonEncode(studentInfo);
  print(jsonInfo);
  //json decode-json string to map
  Map<String, dynamic> mapInfo = jsonDecode(studentJsonInfo);
  print(mapInfo);
}
/*
1. jsonEncode -> map to json
2. jsonDecode -> json to map

3. fromJson() -> map to obj
4. toJson() -> obj to map

5.serialization -> obj to json
6.deserialization -> json to obj


 */