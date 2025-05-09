import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //const String name = "Ahad";
    const String email = "ahadsaad45@gmail.com";
    const String networkImageUrl = "https://i.imgur.com/swHwzBE.jpeg";

    return Scaffold(
      appBar: AppBar(title: const Text("My Profile")),

      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [

                Text("Loacl Profile:", style: TextStyle(fontSize: 16)),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/assets/ahad.png'), // Local image
                ),
                SizedBox(height: 20),
                Text("Ahad", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text(email, style: TextStyle(color: Colors.grey)),

                SizedBox(height: 56),

                Text("Network Profile:", style: TextStyle(fontSize: 16)),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(networkImageUrl), // Network image
                ),
                SizedBox(height: 20),
                Text("Rooky", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}