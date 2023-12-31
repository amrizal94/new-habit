import 'package:flutter/material.dart';
import 'package:new_habbit/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Oxygen',
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(239, 177, 239, 1)),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
