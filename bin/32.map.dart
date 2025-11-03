void main(List<String> args) {
  Map<String, dynamic> student = {"sname": "student1", "rollno": 1};
  student.addAll({"course": "B.Tech(CS)"});
  print(student);
  print(student.containsKey("course"));
  print(student.containsValue(1));
  for (var std in student.keys) {
    print(std);
  }
  for (var std in student.entries) {
    print("${std.key} ${std.value}");
  }
  //
  student.forEach((key, value) {
    print("key= $key, and $value");
  });
  student.remove("sname");
  print(student);
}
