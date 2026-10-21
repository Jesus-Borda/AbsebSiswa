import 'package:app_escolar/src/page/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app_escolar/src/page/loginPage.dart';
import 'package:app_escolar/src/page/landingPage.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'landing',
      builder: (context, state) =>  LandingPage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterPage(),
    )
  ],
  // (Opcional) Manejo de rutas no encontradas (Página 404)
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Página no encontrada (404)'),
    ),
  ),
);