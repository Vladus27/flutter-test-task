import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_test_task/features/home/utils/color_generator.dart';
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
  Color _color = Colors.white; // initial background color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: HomeContent(color: _color),
      onTap: () {
        setState(() {
          _color = generateRandomColor(_random);
        });
      },
    );
  }
}
