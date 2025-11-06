import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: "https://jsonplaceholder.typicode.com",
    connectTimeout: Duration(seconds: 6),
    receiveTimeout: Duration(seconds: 3),
    headers: {
      "Accept": "application/json",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Dart/3.0",
    },
  ),
);
void main(List<String> args) {
  // getData();
  //postData();
  // putData();
  deleteData();
}

Future<void> getData() async {
  try {
    final response = await dio.get("/posts/1");
    if (response.statusCode == 200) {
      print(response.data['title']); //already converted to json to map
    } else {
      print("data not found");
    }
  } on DioException catch (e) {
    print(e);
  }
}

Future<void> postData() async {
  try {
    final response = await dio.post(
      "/posts",
      data: {
        "userId": 44,
        "title": "this is new data in dio",
        "body": "this is body for new data by dio post",
      },
    );
    if (response.statusCode == 201) {
      print(response.data['title']); //already converted to json to map
    } else {
      print("data not found");
    }
  } on DioException catch (e) {
    print(e);
  }
}

Future<void> putData() async {
  try {
    final response = await dio.put(
      "/posts/6",
      data: {
        "userId": 6,
        "title": "this is updated data in dio",
        "body": "this is body for new data by dio post",
      },
    );
    if (response.statusCode == 200) {
      print(response.data['title']); //already converted to json to map
    } else {
      print("data not found");
    }
  } on DioException catch (e) {
    print(e);
  }
}

Future<void> deleteData() async {
  try {
    final response = await dio.delete("/posts/6");
    if (response.statusCode == 200) {
      print(response.data); //already converted to json to map
    } else {
      print("data not found");
    }
  } on DioException catch (e) {
    print(e);
  }
}
