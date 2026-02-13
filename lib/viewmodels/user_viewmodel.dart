import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/user_model.dart';
import 'package:flutter_task_1/services/api_service.dart';

class UserViewModel extends ChangeNotifier{

  final ApiService _apiService = ApiService();

  List<UserModel> users = [];
  bool isLoading = false;
  String? error = '';

  Future<void> fetchUsers() async {
    try{
      isLoading = true;
      notifyListeners();

      users = await _apiService.getData();
    } catch(e) {
      error = 'Falied to fetch users';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}