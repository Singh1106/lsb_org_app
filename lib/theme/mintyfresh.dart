import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class MintyFreshTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Minty Fresh Theme',
      primaryColor: Colors.green[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.green[400]!,
      backgroundColor: Colors.green[50]!,
      headingStyle: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
      ),
      padding: const EdgeInsets.all(16.0),
      borderRadius: 8.0,
      elevation: 2.0,
      // Additional properties for the Minty Fresh theme
      formFieldFillColor: Colors.green[100]!,
      buttonBackgroundColor: Colors.green[300]!,
      buttonTextColor: Colors.white,
      // Feel free to adjust further for a refreshing minty look
    );
  }
}
