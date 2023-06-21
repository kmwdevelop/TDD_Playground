import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice/maths_util.dart';

void main() {
  test('check for two number addition', () {
    // Arrage
    var a = 10;
    var b = 10;

    // Act
    var sum = add(a, b);

    // Assert
    expect(sum, 20);
  });
}