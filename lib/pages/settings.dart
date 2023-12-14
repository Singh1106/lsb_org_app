import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings page"),
        backgroundColor: Colors.purple[100],
      ),
      body: const Column(
        children: [Icon(Icons.settings)],
      ),
    );
  }
}
