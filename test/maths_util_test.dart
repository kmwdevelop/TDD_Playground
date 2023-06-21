import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice/maths_util.dart';

void main() {

  group('Maths utils', () {
    test('check for two number addition', () {
      // Arrage
      var a = 10;
      var b = 10;

      // Act
      var sum = add(a, b);

      // Assert
      expect(sum, 20);
    });

    test('check for two number subtract', () {
      // Arrage
      var a = 10;
      var b = 10;

      // Act
      var sub = substract(a, b);

      // Assert
      expect(sub, 0);
    });

    test('check for two number muntiply', () {
      // Arrage
      var a = 10;
      var b = 10;

      // Act
      var mul = multiply(a, b);

      // Assert
      expect(mul, 100);
    });
  });
}