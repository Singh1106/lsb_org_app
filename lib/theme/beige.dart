import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class BeigeTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Beige Theme',
      primaryColor: Colors.brown[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.brown[400]!,
      backgroundColor: Colors.brown[50]!,
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
      // New properties for the beige theme
      formFieldFillColor: Colors.brown[100]!,
      buttonBackgroundColor: Colors.brown[300]!,
      buttonTextColor: Colors.white,
      // Add more properties as needed for your beige theme
    );
  }
}
