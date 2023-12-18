import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class LightTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Light Theme',
      primaryColor: Colors.blue,
      secondaryColor: Colors.white,
      accentColor: Colors.green,
      backgroundColor: Colors.white,
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
      // New properties for the enhanced theme
      formFieldFillColor: Colors.white, // Example color for form field fill
      buttonBackgroundColor:
          Colors.blueAccent, // Example color for button background
      buttonTextColor: Colors.white, // Example color for button text
      // Add more properties as needed for your enhanced theme
    );
  }
}
