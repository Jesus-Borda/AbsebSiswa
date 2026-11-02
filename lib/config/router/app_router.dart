import 'package:app_escolar/src/page/register_page.dart';
import 'package:app_escolar/src/page/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app_escolar/src/page/login_page.dart';
import 'package:app_escolar/src/page/start_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'startPage',
      builder: (context, state) =>  StartPage(),
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
    ),
    GoRoute(
      path: '/landing',
      name: 'landing',
      builder: (context, state) => const LandingPage(),
    )
  ],
  // (Opcional) Manejo de rutas no encontradas (Página 404)
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Página no encontrada (404)'),
    ),
  ),
);