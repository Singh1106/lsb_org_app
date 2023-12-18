import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/analytics.dart';
import 'package:lsb_organization/pages/customer-management.dart';
import 'package:lsb_organization/pages/dashboard.dart';
import 'package:lsb_organization/pages/login.dart';
import 'package:lsb_organization/pages/onboarding.dart';
import 'package:lsb_organization/pages/settings.dart';
import 'package:lsb_organization/theme/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _pages = [
    const DashboardPage(),
    const OnBoardingPage(),
    const AnalyticsPage(),
    const CustomerManagementPage(),
    const SettingsPage()
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Example navigation logic:
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => _pages[index],
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: theme.primaryColor,
        type: BottomNavigationBarType.fixed, // This is all you need!

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
      body: _pages[_selectedIndex],
    );
  }
}
