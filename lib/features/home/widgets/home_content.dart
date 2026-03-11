import 'package:flutter/material.dart';

/// The main content of the home screen with the background
class HomeContent extends StatelessWidget {
  /// Constructor with a default color parameter
  const HomeContent({this.color = Colors.white, super.key});

  /// background screen color
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: const Center(
        child: Text('Hello there'),
      ),
    );
  }
}
