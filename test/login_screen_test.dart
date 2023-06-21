import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_practice/login_screen.dart';

void main() {
  testWidgets('Should have a title', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    ); // 렌더링

    // Act
    Finder title = find.text("Login");

    // Assert
    expect(title, findsOneWidget);
  });

  testWidgets('Should have one text field form to collect user email id',
      (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // Act
    Finder userNameTextField = find.byKey(const ValueKey("email_id"));

    // Assert
    expect(userNameTextField, findsOneWidget);
  });

  testWidgets('Should have one text field form to collect user Password',
      (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // Act
    Finder passwordTextField = find.byKey(const ValueKey("password_id"));

    // Assert
    expect(passwordTextField, findsOneWidget);
  });

  testWidgets('Should have one login button', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // Act
    // Finder passwordTextField = find.byKey(const ValueKey("password_id"));
    Finder loginButton = find.byType(ElevatedButton);

    // Assert 테스트커밋
    expect(loginButton, findsOneWidget);
  });

  testWidgets(
      'Should show Required Field error message if user email id & password is empty',
      (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // ACT
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorText = find.text("Required Field");

    // Assert
    expect(errorText, findsNWidgets(2));
  });
}
