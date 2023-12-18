import 'package:flutter/material.dart';
import 'package:lsb_organization/theme/main.dart';

class CustomerManagementPage extends StatelessWidget {
  const CustomerManagementPage({Key? key}) : super(key: key);

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
              Icons.offline_bolt,
              size: 100,
              color: theme.accentColor,
            ),
            SizedBox(height: 20),
            Text(
              'Customer Management Overview',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: theme.accentColor),
                ),
                child: Center(
                  child: Text(
                    'Customer List Placeholder',
                    style: TextStyle(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Define action to navigate or perform specific customer management tasks
                // For example: Navigator.push(context, MaterialPageRoute(builder: (context) => AddCustomerPage()));
              },
              child: Text('Add Customer'),
              style: ElevatedButton.styleFrom(
                foregroundColor: theme.primaryColor,
                backgroundColor: theme.accentColor,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
