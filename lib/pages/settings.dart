import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/theme/main.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Padding(
        padding: theme.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.settings,
              size: 100,
              color: theme.accentColor,
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Account Settings',
                style: TextStyle(color: theme.primaryColor),
              ),
              onTap: () {
                // Define action to navigate to account settings
                // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettingsPage()));
              },
            ),
            const Divider(color: Colors.transparent),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                'Notification Settings',
                style: TextStyle(color: theme.primaryColor),
              ),
              onTap: () {
                // Define action to navigate to notification settings
                // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationSettingsPage()));
              },
            ),
            const Divider(color: Colors.transparent),
            // Add more ListTile items for different settings options

            // Example:
            // ListTile(
            //   leading: Icon(Icons.security),
            //   title: Text(
            //     'Security Settings',
            //     style: TextStyle(color: theme.primaryColor),
            //   ),
            //   onTap: () {
            //     // Define action to navigate to security settings
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
