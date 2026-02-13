import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/user_model.dart';

class UserDetailView extends StatelessWidget {
  final UserModel user;

  const UserDetailView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.indigo.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Basic Information", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                    Divider(),
                    Text("ID: ${user.id}"),
                    Text("Name: ${user.name}"),
                    Text("Username: ${user.username}"),
                    Text("Email: ${user.email}"),
                    Text("Phone: ${user.phone}"),
                    Text("Website: ${user.website}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),

            Card(
              color: Colors.indigo.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                    Divider(),

                    Text("Street: ${user.address?.street}"),
                    Text("Suite: ${user.address?.suite}"),
                    Text("City: ${user.address?.city}"),
                    Text("Zipcode: ${user.address?.zipcode}"),
                    Text("Latitude: ${user.address?.geo?.lat}"),
                    Text("Longitude: ${user.address?.geo?.lng}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),

            Card(
              color: Colors.indigo.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Company", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold,),),
                    Divider(),

                    Text("Company Name: ${user.company?.name}"),
                    Text("Catch Phrase: ${user.company?.catchPhrase}"),
                    Text("BS: ${user.company?.bs}"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
