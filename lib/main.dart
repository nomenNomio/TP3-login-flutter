import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/app_router.dart';
import 'package:flutter_application_2/presentation/screens/login.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
