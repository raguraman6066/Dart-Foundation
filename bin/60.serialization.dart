import 'dart:convert';

void main(List<String> args) {
  // deserialization -> json to obj
  String studentJson = '''
{
 "rollNo":1,
 "sName":"Udemy",
 "course":"Dart Async"
}

''';
  Student s = Student.fromJson(jsonDecode(studentJson));
  print(s.rollNo);

  //serialization - obj to json
  // Student s1=Student(rollNo: 1, sName: "demo", course: "html");
  String s2 = jsonEncode(s.toJson()); //s.toJson is map..
  print(s2);
}

/*
1.serialization- Object ->Map ->Json
2.deserialization-  Json -> Map->Object.

 */
class Student {
  int rollNo;
  String sName;
  String course;
  Student({required this.rollNo, required this.sName, required this.course});
  factory Student.fromJson(Map<String, dynamic> student) {
    return Student(
      rollNo: student['rollNo'],
      sName: student['sName'],
      course: student['course'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"rollNo": rollNo, "sName": sName, "course": course};
  }
}
