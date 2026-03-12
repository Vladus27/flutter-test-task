import 'dart:math' as math;
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_task/features/home/utils/color_generator.dart';

const int maxColorChannel = 255;
const int minColorChannel = 0;

int channel(double value) =>
    (value * maxColorChannel).round().clamp(minColorChannel, maxColorChannel);

void main() {
  test('generated color has valid values', () {
    final random = math.Random();

    final color = generateRandomColor(random);

    expect(channel(color.a), maxColorChannel);
    expect(
      channel(color.r),
      inInclusiveRange(minColorChannel, maxColorChannel),
    );
    expect(
      channel(color.g),
      inInclusiveRange(minColorChannel, maxColorChannel),
    );
    expect(
      channel(color.b),
      inInclusiveRange(minColorChannel, maxColorChannel),
    );
  });
}
