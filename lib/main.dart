import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Correct import for Riverpod
import 'package:screl_calender_app/view/homepage.dart';

void main() {
  runApp(
    const ProviderScope(
      // Make sure this is defined correctly
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(), // Your HomePage
    );
  }
}
