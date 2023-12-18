import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.settings,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
