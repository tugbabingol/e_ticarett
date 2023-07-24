
import 'package:e_ticarett/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:IntroScreen(),
      debugShowCheckedModeBanner: false,
      title: "EcommerceApp",
    );
  }
}