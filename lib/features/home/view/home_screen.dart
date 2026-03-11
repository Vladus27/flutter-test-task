import 'package:flutter/material.dart';
import 'package:flutter_test_task/features/home/widgets/home_color_changer.dart';

///Screen that allows the user to change the background color
class HomeScreen extends StatelessWidget {
  ///Default constructor for HomeScreen
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const HomeColorChanger();
  }
}
