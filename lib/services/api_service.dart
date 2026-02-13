import 'package:dio/dio.dart';
import 'package:flutter_task_1/models/user_model.dart';

class ApiService {
  Dio dio = Dio(
    BaseOptions(
      headers: {
        'Accept': 'application/json',
      },
    ),
  );

  /*Future<List<UserModel>> getData () async {
    try{
      var response = await dio.get('https://jsonplaceholder.typicode.com/users');

      return response.data.map((user) => UserModel.fromJson(user as Map<String, dynamic>)).toList();

    } catch(e) {  
      print("DIO ERROR: $e");
     rethrow;  
    }
  }*/

Future<List<UserModel>> getData() async {
  try {
    final response = await dio.get('https://jsonplaceholder.typicode.com/users');

    final List<dynamic> data = response.data;

    final List<UserModel> users = data
        .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return users;

  } catch (e) {
    print("ERROR: $e");
    rethrow;
  }
}

}
