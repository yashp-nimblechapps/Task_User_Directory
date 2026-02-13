import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      context.go('/list');
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.indigo.shade600,
    body: SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.people, size: 80, color: Colors.indigo.shade600,),
            ),
            SizedBox(height: 30,),          
            Text('User List', textAlign: TextAlign.center, style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade50,
                letterSpacing: 1
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
