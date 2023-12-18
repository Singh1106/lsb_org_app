import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/home.dart';
import 'package:lsb_organization/pages/login.dart';
import 'package:lsb_organization/pages/otp.dart';
import 'package:lsb_organization/pages/settings.dart';
import 'package:lsb_organization/theme/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeSelector.getTheme().toThemeData(), // Apply the selected theme

        home: const LoginPage(),
        routes: {
          '/otp': (context) => const OtpPage(),
          '/home': (context) => const HomePage(),
          '/settings': (context) => const SettingsPage(),
          // dk why this no work
        });
  }
}
