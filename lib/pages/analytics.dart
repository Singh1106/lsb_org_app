import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.r_mobiledata,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
