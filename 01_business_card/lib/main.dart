import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text("Business Card"),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            // Profile Picture
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),

            const SizedBox(height: 40),

            // Buttons (Custom Containers)
            buildContactBox("Call Me Maybe:", Icons.phone),
            const SizedBox(height: 15),
            buildContactBox("WhatsApp:", Icons.chat),
            const SizedBox(height: 15),
            buildContactBox("E-mail:", Icons.email),
            const SizedBox(height: 15),
            buildContactBox("Instagram:", Icons.camera_alt),
          ],
        ),
      ),
    );
  }

  // Reusable Box Widget
  Widget buildContactBox(String text, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.white, Colors.lightBlueAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(icon, color: Colors.black54),
        ],
      ),
    );
  }
}
