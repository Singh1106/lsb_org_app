import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/pages/analytics.dart';
import 'package:lsb_organization/pages/customer-management.dart';
import 'package:lsb_organization/pages/dashboard.dart';
import 'package:lsb_organization/pages/login.dart';
import 'package:lsb_organization/pages/onboarding.dart';
import 'package:lsb_organization/pages/settings.dart';
import 'package:lsb_organization/theme/main.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();
    final selectedPageIndex = useState<int>(0);

    final List<Widget> _pages = [
      const DashboardPage(),
      const OnBoardingPage(),
      const AnalyticsPage(),
      const CustomerManagementPage(),
      const SettingsPage(),
    ];

    void _navigateBottomBar(int index) {
      selectedPageIndex.value = index;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('LSB Org'),
        backgroundColor: theme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: theme.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.primaryColor,
              ),
              child: const Column(
                children: [
                  Icon(Icons.favorite),
                  Text(
                    'LSB Organization',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                selectedPageIndex.value = 0;
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                selectedPageIndex.value = 4;
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex.value,
        onTap: _navigateBottomBar,
        backgroundColor: theme.primaryColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              size: 24,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
              size: 24,
            ),
            label: 'OnBoarding',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.g_mobiledata,
              size: 24,
            ),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.yard,
              size: 24,
            ),
            label: 'Customer Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 24,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: _pages[selectedPageIndex.value],
    );
  }
}
