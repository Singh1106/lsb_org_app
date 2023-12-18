import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Padding(
        padding: theme.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: theme.secondaryColor,
              elevation: theme.elevation,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(theme.borderRadius),
              ),
              child: ListTile(
                title: Text(
                  'Active Users',
                  style:
                      theme.bodyTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '1,000',
                  style: theme.bodyTextStyle,
                ),
                leading: Icon(Icons.group, color: theme.accentColor),
                onTap: () {
                  // Add onTap logic
                },
              ),
            ),
            Card(
              color: theme.secondaryColor,
              elevation: theme.elevation,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(theme.borderRadius),
              ),
              child: ListTile(
                title: Text(
                  'Sales Today',
                  style:
                      theme.bodyTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '\$5,000',
                  style: theme.bodyTextStyle,
                ),
                leading: Icon(Icons.attach_money, color: theme.accentColor),
                onTap: () {
                  // Add onTap logic
                },
              ),
            ),
            // Other widgets like graphs, charts, or summaries

            // Add more widgets based on the specific content you want to display
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define an action when the button is pressed
        },
        backgroundColor: theme.accentColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
