import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/theme/main.dart';

class OnBoardingPage extends HookWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Padding(
        padding: theme.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to LSB Organization!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'This is where you can onboard your organization '
              'and set up your loyalty program.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 40),
            const Icon(
              Icons.vaccines,
              size: 100,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Define action when the button is pressed
                // For example, navigate to the next onboarding step or to the home page
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColor,
                backgroundColor: theme.accentColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
