import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.vaccines,
            size: 100,
            color: theme.accentColor,
          )
        ],
      ),
    );
  }
}
