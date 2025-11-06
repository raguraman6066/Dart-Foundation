import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
  print("start");
  // getData(););
  // postData();
  //putData();
  deleteData();
  print("end");
}

Future<void> deleteData() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/6");
  final headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Dart/3.0",
    "Accept": "application/json",
  };

  final response = await http.delete(url, headers: headers);
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print("not inserted");
  }
}

Future<void> putData() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/6");
  final headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Dart/3.0",
    "Accept": "application/json",
  };

  final response = await http.put(
    url,
    body: jsonEncode({
      "userId": 6,
      "title": "new updated value in post api using http",
      "body": "this is updated body of new info",
    }),
    headers: headers,
  );
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print("not inserted");
  }
}

Future<void> postData() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Dart/3.0",
    "Accept": "application/json",
  };

  final response = await http.post(
    url,
    body: jsonEncode({
      "userId": 10,
      "title": "new value in post api using http",
      "body": "this is body of new info",
    }),
    headers: headers,
  );
  if (response.statusCode == 201) {
    print(response.body);
  } else {
    print("not inserted");
  }
}

Future<void> getData() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
  final headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Dart/3.0",
    "Accept": "application/json",
  };

  final response = await http.get(url, headers: headers);

  print("Status code: ${response.statusCode}");
  if (response.statusCode == 200) {
    //print(response.body); //json/ string format
    final data = jsonDecode(response.body); //json to map
    // print(data['title']);
    // print(data['userId']);
    final post = Student.fromJson(data);
    print(post.title);
    print(post.body);
  } else {
    print("Failed: ${response.reasonPhrase}");
  }
}

class Student {
  int userId;
  String title;
  String body;
  Student({required this.userId, required this.title, required this.body});
  factory Student.fromJson(Map<String, dynamic> student) {
    return Student(
      userId: student['userId'],
      title: student['title'],
      body: student['body'],
    );
  }
}
