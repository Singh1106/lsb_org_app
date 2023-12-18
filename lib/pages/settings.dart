import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: theme.primaryColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Icon(
          Icons.settings,
          size: 100,
          color: theme.accentColor,
        ),
      ),
    );
  }
}
