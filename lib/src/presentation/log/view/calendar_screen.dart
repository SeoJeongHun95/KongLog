import 'package:flutter/material.dart';

import '../../../../core/router/bottom_nav_bar.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Log")),
      body: const Center(child: Text("Log Screen")),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
