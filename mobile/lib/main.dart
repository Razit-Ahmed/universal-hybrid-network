import 'package:flutter/material.dart';

void main() {
  runApp(const UHNApp());
}

class UHNApp extends StatelessWidget {
  const UHNApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universal Hybrid Network',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.hub,
              size: 90,
              color: Colors.cyanAccent,
            ),
            SizedBox(height: 25),

            Text(
              "Universal Hybrid Network",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "UHN",
              style: TextStyle(
                fontSize: 20,
                color: Colors.cyanAccent,
                letterSpacing: 3,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Version 0.1.0",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Building the Future of Hybrid Communication",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}