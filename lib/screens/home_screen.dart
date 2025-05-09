import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_card/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          },
          child: const Text(
              'Open My Profile',
              style: TextStyle(color: Colors.blueGrey))
        ),
      ),
    );
  }
}