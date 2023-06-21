import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice/validator.dart';

void main() {

  group("login test", () {
    test('validate for empty email id', () {
      // Arrange
      var result = Validator.validateEmail('');

      // Assert
      expect(result, "Required Field");
    });

    test('validate for invalid email id', () {
      // Arrange
      var result = Validator.validateEmail('lkasjdf;l');

      // Assert
      expect(result, "Please enter a vaild email id");
    });

    test('validate for valid email id', () {
      // Arrange
      var result = Validator.validateEmail('unknown@naver.com');

      // Assert
      expect(result, "Success");
    });
  });
}