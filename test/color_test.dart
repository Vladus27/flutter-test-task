import 'dart:math' as math;
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_task/features/home/utils/color_generator.dart';

void main() {
  test('generated color has valid values', () {
    final random = math.Random();

    final color = generateRandomColor(random);

    expect(channel(color.a), 255);
    expect(channel(color.r), inInclusiveRange(0, 255));
    expect(channel(color.g), inInclusiveRange(0, 255));
    expect(channel(color.b), inInclusiveRange(0, 255));
  });
}

int channel(double value) => (value * 255).round().clamp(0, 255);
