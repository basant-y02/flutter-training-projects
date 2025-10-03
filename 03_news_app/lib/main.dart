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
        backgroundColor: const Color.fromARGB(255, 138, 242, 250),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 242, 250),
          elevation: 0,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Flutter ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 68, 109, 170), 
                    fontSize: 22,
                  ),
                ),
                TextSpan(
                  text: "News",
                  style: TextStyle(
                    color: Colors.red, 
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ------- CARD MAIN CONTENT -------
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/maxresdefault.jpg",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Title
                  const Text(
                    "PUBG Mobile team initially used native development for both iOS an ...",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Description
                  Text(
                    "Flutter allowed PUBG Mobile to build a single codebase for both iOS and Android, saving development time and effort. This is especially beneficial for a game with a massive glob...",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            // ------- SOCIAL MEDIA ICONS -------
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Facebook
                  Container(
                    width: 65,
                    height: 65,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/f.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Instagram
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.symmetric(horizontal: 35),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/images/i.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // LinkedIn
                  Container(
                    width: 95,
                    height: 85,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/l.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
