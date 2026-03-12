import 'package:flutter/material.dart';

/// The main content of the home screen with the background
class HomeContent extends StatelessWidget {
  /// Constructor with a default color parameter
  const HomeContent({this.color = Colors.white, super.key});

  /// background screen color
  final Color color;

  @override
  Widget build(BuildContext context) {
    final luminance = color.computeLuminance();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 140),
      color: color,
      child: Center(
        child: Text(
          'Hello there',
          style: TextStyle(
            color: luminance > 0.4 ? Colors.black : Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
