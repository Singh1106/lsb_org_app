import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.help_center,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
