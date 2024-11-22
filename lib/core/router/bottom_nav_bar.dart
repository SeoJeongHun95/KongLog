import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _getCurrentIndex(context),
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/calendar');
            break;
          case 1:
            context.go('/log');
            break;
          case 2:
            context.go('/settings');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: '달력',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: '로그',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '설정',
        ),
      ],
    );
  }

  int _getCurrentIndex(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.toString();
    switch (currentPath) {
      case '/calendar':
        return 0;
      case '/log':
        return 1;
      case '/settings':
        return 2;
      default:
        return 0;
    }
  }
}
