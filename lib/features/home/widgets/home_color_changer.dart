import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_test_task/features/home/widgets/home_content.dart';

/// Widget that allows the user to change the background color
class HomeColorChanger extends StatefulWidget {
  /// Default constructor for HomeColorChanger
  const HomeColorChanger({
    super.key,
  });

  @override
  State<HomeColorChanger> createState() => _HomeColorChangerState();
}

class _HomeColorChangerState extends State<HomeColorChanger> {
  final _random = math.Random();
  static const int _maxAlphaValue = 255; // oppacity
  static const int _maxColorChannel = 256; // exclusive upper bound for channels
  Color _color = Colors.white; // initial background color

  Color _getRandomColor() {
    return Color.fromARGB(
      _maxAlphaValue,
      _random.nextInt(_maxColorChannel),
      _random.nextInt(_maxColorChannel),
      _random.nextInt(_maxColorChannel),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: HomeContent(color: _color),
      onTap: () {
        setState(() {
          _color = _getRandomColor();
        });
      },
    );
  }
}
