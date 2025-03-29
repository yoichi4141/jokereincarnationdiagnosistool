import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/diagnosis/view/home_page.dart';
import '../features/diagnosis/view/loading_page.dart';
import '../features/diagnosis/view/result_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/loading', builder: (context, state) => const LoadingPage()),
    GoRoute(path: '/result', builder: (context, state) => const ResultPage()),
  ],
);
