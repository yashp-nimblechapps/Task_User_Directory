import 'package:flutter/material.dart';
import 'package:flutter_task_1/viewmodels/user_viewmodel.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() => context.read<UserViewModel>().fetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    //final viewModel = context.watch<UserViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('User List', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo.shade700,
      ),

      body: Consumer<UserViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (viewModel.users.isEmpty) {
            return Center(child: Text('No User Found'));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: viewModel.users.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.indigo.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                elevation: 3,
                child: ListTile(
                  onTap: () =>
                      context.push('/detail', extra: viewModel.users[index]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo.shade600,
                    child: Text('${viewModel.users[index].id}',style: TextStyle(color: Colors.white)),
                  ),
                  title: Text('${viewModel.users[index].username}'),
                  subtitle: Text('${viewModel.users[index].name}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
