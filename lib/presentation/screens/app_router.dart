import 'package:flutter_application_2/presentation/screens/home.dart';
import 'package:flutter_application_2/presentation/screens/login.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(initialLocation: "/login", routes: [
  GoRoute(
    name: LoginScreen.name,
    path: "/login",
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: "/home",
    builder: (context, state) => HomeScreen(userName: state.extra as String),
  ),
]);
