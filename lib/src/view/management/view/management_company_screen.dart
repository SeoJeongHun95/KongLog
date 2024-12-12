import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/bottom_nav_bar.dart';

class ManagementCompanyScreen extends StatelessWidget {
  const ManagementCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("업체관리"),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              context.go('/management/add');
            },
            child: const Text("추가"),
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Management Screen"),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
