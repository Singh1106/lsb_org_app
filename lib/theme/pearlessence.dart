import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class PearlEssenceTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Pearl Essence Theme',
      primaryColor: Colors.grey[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.grey[400]!,
      backgroundColor: Colors.grey[50]!,
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
      // Additional properties for the Pearl Essence theme
      formFieldFillColor: Colors.grey[100]!,
      buttonBackgroundColor: Colors.grey[300]!,
      buttonTextColor: Colors.black87,
      // Feel free to adjust for a subtle, pearly appearance
    );
  }
}
