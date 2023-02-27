import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Profile Screen'),),
        body: Center(
            child: Container(
              child: const Text('Profile Screen'),
            )
        ),
      ),
    );
  }
}