import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../src/views/add/view/add_screen.dart';
import '../../src/views/calender/view/calendar_screen.dart';
import '../../src/views/log/view/calendar_screen.dart';
import '../../src/views/management/view/management_company_screen.dart';
import '../../src/views/more/view/more_screen.dart';

// GoRouter 설정
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/calendar', // 기본적으로 캘린더 화면으로 시작
    routes: [
      GoRoute(
        path: '/calendar',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const CalendarScreen(),
        ),
      ),
      GoRoute(
        path: '/add',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const AddScreen(),
        ),
      ),
      GoRoute(
        path: '/log',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const LogScreen(),
        ),
      ),
      GoRoute(
        path: '/management',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ManagementCompanyScreen(),
        ),
        routes: const [
          // GoRoute(
          //   path: 'add',
          //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
          //     context: context,
          //     state: state,
          //     child: const AddCompanyScreen(),
          //   ),
          // ),
        ],
      ),
      GoRoute(
        path: '/more',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const MoreScreen(),
        ),
      ),
    ],

    // errorBuilder: (context, state) => PageNotFound(
    //   errMsg: state.error.toString(),
    // ),
  );
});

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
