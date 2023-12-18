import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class PeachyGlowTheme {
  static AppTheme get theme {
    return AppTheme(
      name: 'Peachy Glow Theme',
      primaryColor: Colors.orange[200]!,
      secondaryColor: Colors.white,
      accentColor: Colors.orange[400]!,
      backgroundColor: Colors.orange[50]!,
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
      // Additional properties for the Peachy Glow theme
      formFieldFillColor: Colors.orange[100]!,
      buttonBackgroundColor: Colors.orange[300]!,
      buttonTextColor: Colors.white,
      // Feel free to fine-tune for a warm peachy ambiance
    );
  }
}
