import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class OceanBreezeTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Ocean Breeze Theme',
      primaryColor: Colors.blue[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.blue[400]!,
      backgroundColor: Colors.blue[50]!,
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
      // Additional properties for the Ocean Breeze theme
      formFieldFillColor: Colors.blue[100]!,
      buttonBackgroundColor: Colors.blue[300]!,
      buttonTextColor: Colors.white,
      // Feel free to fine-tune for a refreshing oceanic feel
    );
  }
}
