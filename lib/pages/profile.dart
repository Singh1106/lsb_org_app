import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: theme.primaryColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Icon(
          Icons.account_box,
          size: 100,
          color: theme.accentColor,
        ),
      ),
    );
  }
}
