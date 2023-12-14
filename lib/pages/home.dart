import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/login.dart';
import 'package:lsb_organization/pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.purple[100],
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
        backgroundColor: Colors.purple[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Column(children: [
                Icon(Icons.favorite),
                Text(
                  'LSB Organization',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
              ]),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
                // Add functionality here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Navigator.pushNamed(context,
                //     '/settings'); // Somehow this is not working even though the routes are defined in the main
                // Add functionality here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        color: Colors.purple[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: const Row(
                children: [Icon(Icons.home), Text('Home')],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: const Row(
                children: [Icon(Icons.settings), Text('Settings')],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: const Row(
                children: [Icon(Icons.account_box), Text('Profile')],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.purple[50],
        child: const Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
