import 'dart:math';
import 'package:flutter/material.dart';

/// Function for randomly geting a background color
Color generateRandomColor(Random random) {
  const maxAlphaValue = 255; // oppacity
  const maxColorChannel = 256; // exclusive upper bound for channels

  return Color.fromARGB(
    maxAlphaValue,
    random.nextInt(maxColorChannel),
    random.nextInt(maxColorChannel),
    random.nextInt(maxColorChannel),
  );
}
