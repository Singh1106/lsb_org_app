import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class LavenderHazeTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Lavender Haze Theme',
      primaryColor: Colors.purple[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.purple[400]!,
      backgroundColor: Colors.purple[50]!,
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
      // Additional properties for the Lavender Haze theme
      formFieldFillColor: Colors.purple[100]!,
      buttonBackgroundColor: Colors.purple[300]!,
      buttonTextColor: Colors.white,
      // Feel free to adjust for a soothing lavender atmosphere
    );
  }
}
