import 'package:flutter/material.dart';
import 'package:flutter_task_1/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_task_1/viewmodels/user_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => UserViewModel(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
      ),
    );
  }
}

