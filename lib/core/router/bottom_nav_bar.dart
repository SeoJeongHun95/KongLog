import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../src/views/add/view/add_screen.dart';
import '../theme/app_color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _getCurrentIndex(context),
      selectedFontSize: 12,
      selectedItemColor: AppColor.KongBlue1,
      unselectedItemColor: AppColor.KongBlack5,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/calendar');
            break;
          case 1:
            context.go('/log');
            break;
          case 2:
            showModalBottomSheet(
              showDragHandle: true,
              context: context,
              builder: (context) => const AddScreen(),
            );
            break;
          case 3:
            context.go('/management');
            break;
          case 4:
            context.go('/more');
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
          icon: Icon(Icons.add),
          label: '공수등록',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build_rounded),
          label: '업체관리',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_rounded),
          label: '더보기',
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
      case '/add':
        return 2;
      case '/management':
        return 3;
      case '/more':
        return 4;
      default:
        return 0;
    }
  }
}
