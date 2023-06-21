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



    test('validate for empty password', () {
      // Arrange
      var result = Validator.validatePassword('');

      // Assert
      expect(result, "Required Field");
    });

    test('validate for invalid password', () {
      // Arrange
      var result = Validator.validatePassword("12");

      // Assert
      expect(result, "Please enter a valid password");
    });

    test('validate for valid password', () {
      // Arrange
      var result = Validator.validatePassword("1127121!@");

      // Assert
      expect(result, "Please enter a valid password");
    });

  });
}