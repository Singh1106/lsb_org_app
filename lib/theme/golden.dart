import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class GoldenTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Golden Theme',
      primaryColor: Colors.yellow[700]!,
      secondaryColor: Colors.white,
      accentColor: Colors.amber,
      backgroundColor: Colors.yellow[50]!,
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
      // New properties for the golden theme
      formFieldFillColor: Colors.yellow[100]!,
      buttonBackgroundColor: Colors.amber,
      buttonTextColor: Colors.white,
      // Add more properties as needed for your golden theme
    );
  }
}
