import 'package:flutter/material.dart';
import 'package:flutter_test_task/features/home/home.dart';

/// Root widget of the application.
class MyApp extends StatelessWidget {
  /// Default constructor for MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Solid Software - test task',
      home: HomeScreen(),
    );
  }
}
