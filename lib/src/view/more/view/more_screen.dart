import 'package:flutter/material.dart';

import '../../../../core/router/bottom_nav_bar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("더보기"),
        centerTitle: false,
      ),
      body: const Center(child: Text("Moer Screen")),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
