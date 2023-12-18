import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      body: Padding(
        padding: theme.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.r_mobiledata,
              size: 100,
              color: theme.accentColor,
            ),
            SizedBox(height: 20),
            Text(
              'Analytics Overview',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: theme.accentColor),
              ),
              child: Center(
                child: Text(
                  'Analytics Data Placeholder',
                  style: TextStyle(
                    color: theme.primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'View detailed reports and insights here.',
              style: TextStyle(
                fontSize: 16,
                color: theme.primaryColor,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Define action to navigate to detailed analytics or reports
                // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedAnalyticsPage()));
              },
              child: Text('View Reports'),
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                backgroundColor: theme.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
