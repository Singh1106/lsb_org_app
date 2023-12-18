import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class CustomerManagementPage extends StatelessWidget {
  const CustomerManagementPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.offline_bolt,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
