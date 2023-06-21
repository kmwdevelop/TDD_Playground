import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _emailController,
            key: const ValueKey("email_id"),
            decoration: const InputDecoration(),
          ),
          TextFormField(
            controller: _passwordController,
            key: const ValueKey("password_id"),
            decoration: const InputDecoration(),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button"),
          )
        ],
      ),
    );
  }
}
