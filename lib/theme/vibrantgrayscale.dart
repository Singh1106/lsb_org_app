import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class VibrantGrayscaleTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Vibrant Grayscale Theme',
      primaryColor: Colors.grey[400]!,
      secondaryColor: Colors.grey[800]!,
      accentColor: Colors.grey[600]!,
      backgroundColor: Colors.grey[200]!,
      headingStyle: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
      ),
      padding: const EdgeInsets.all(16.0),
      borderRadius: 8.0,
      elevation: 2.0,
      // Additional properties for the Vibrant Grayscale theme
      formFieldFillColor: Colors.grey[300]!,
      buttonBackgroundColor: Colors.grey[500]!,
      buttonTextColor: Colors.black87,
      // A vibrant take on the grayscale theme
    );
  }
}
