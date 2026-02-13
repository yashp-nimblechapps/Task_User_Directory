import 'package:flutter_task_1/models/user_model.dart';
import 'package:flutter_task_1/views/splash_view.dart';
import 'package:flutter_task_1/views/user_detail_view.dart';
import 'package:flutter_task_1/views/user_list_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context,state) => SplashView()),
      GoRoute(path: '/list', builder: (context, state) => UserListView()),
      GoRoute(path: '/detail', builder: (context, state) {
        final user = state.extra as UserModel;
        return UserDetailView(user: user);
      }),
    ]
  );
}