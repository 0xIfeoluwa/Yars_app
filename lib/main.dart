import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yars_app/screens/create_account_screen.dart';
import 'package:yars_app/screens/start_screen.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: _router,
      // title: 'Go router',
    ),
  );
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const PageIndicator(),
  ),
  GoRoute(
    path: '/Sign_up',
    builder: (context, state) => const CreateAccountScreen(),
  ),
]);
