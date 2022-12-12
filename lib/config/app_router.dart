import 'package:go_router/go_router.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const InputPage(),
        routes: [
          GoRoute(
              name: 'results_page',
              path: 'results_page/:bmiResult/:category/:interpretation',
              builder: (BuildContext context, GoRouterState state) {
                return ResultsPage(
                  bmiResult: state.params['bmiResult']!,
                  category: state.params['category']!,
                  interpretation: state.params['interpretation']!,
                );
              }),
        ]),
  ],
  debugLogDiagnostics: true,
);
