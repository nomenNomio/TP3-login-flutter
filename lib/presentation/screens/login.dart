import 'package:flutter/material.dart';
import 'package:flutter_application_2/entities/user_factory.dart';
import 'package:flutter_application_2/presentation/screens/home.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static const String name = 'login';
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;

  String? password;

  UserFactory userRepo = UserFactory();

  @override
  Widget build(BuildContext context) {
    var snackBar = SnackBar(
      content: const Text('Password or email incorrect'),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(30.0),
      backgroundColor: Colors.red.shade400,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextField(
              onChanged: (email) {
                this.email = email.trim();
              },
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextField(
              onChanged: (password) {
                this.password = password.trim();
              },
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                try {
                  String username = userRepo.getUsername(email, password);
                  context.pushNamed(HomeScreen.name, extra: username);
                } catch (error) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
