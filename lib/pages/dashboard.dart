import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/theme/main.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();
    final activeUsers = useState<int>(1000);
    final salesToday = useState<double>(5000.0);

    return Scaffold(
      body: Padding(
        padding: theme.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardWidget(
              title: 'Active Users',
              value: activeUsers.value.toString(),
              icon: Icons.group,
              theme: theme,
            ),
            CardWidget(
              title: 'Sales Today',
              value: '\$${salesToday.value.toString()}',
              icon: Icons.attach_money,
              theme: theme,
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

class CardWidget extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final AppTheme theme;

  const CardWidget({
    required this.title,
    required this.value,
    required this.icon,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.secondaryColor,
      elevation: theme.elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(theme.borderRadius),
      ),
      child: ListTile(
        title: Text(
          title,
          style: theme.bodyTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value,
          style: theme.bodyTextStyle,
        ),
        leading: Icon(icon, color: theme.accentColor),
        onTap: () {
          // Add onTap logic
        },
      ),
    );
  }
}
