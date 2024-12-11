import 'package:flutter/material.dart';

import '../../../core/router/bottom_nav_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: const Center(child: Text("Settings Screen")),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
