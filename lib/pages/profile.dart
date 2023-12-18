import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.account_box,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
