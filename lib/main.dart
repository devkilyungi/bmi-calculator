import 'package:flutter/material.dart';
import 'constants.dart';
import 'config/app_router.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: primaryAppColour),
        scaffoldBackgroundColor: primaryAppColour,
      ),
    );
  }
}
