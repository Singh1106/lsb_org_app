import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
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
            DrawerHeader(
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
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Add functionality here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Add functionality here
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
              child: Row(
                children: [Icon(Icons.home), Text('Home')],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Row(
                children: [Icon(Icons.settings), Text('Settings')],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality here
              },
              child: Row(
                children: [Icon(Icons.account_box), Text('Profile')],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.purple[50],
        child: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
