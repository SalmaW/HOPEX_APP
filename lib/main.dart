import 'package:flutter/material.dart';
import 'package:hopex/Components/body.dart';
import 'package:hopex/views/screens/01.intro/splash.dart';
import 'package:hopex/views/screens/02authentication/01welcome/welcome_screen.dart';
import 'package:hopex/config/app_colors.dart';
import 'package:hopex/views/screens/02authentication/01welcome/welcome_screen_OTP.dart';
import 'hopex_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = HopexTheme.light();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const WelcomeScreen(),
    );
  }
}
