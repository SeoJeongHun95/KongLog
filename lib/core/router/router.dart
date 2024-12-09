import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../src/kong_calender/presentation/view/calendar_screen.dart';
import '../../src/kong_log/presentation/calendar_screen.dart';
import '../../src/kong_setting/presentation/setting_screen.dart';

// GoRouter 설정
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/calendar', // 기본적으로 캘린더 화면으로 시작
    routes: [
      // 캘린더 화면 라우트
      GoRoute(
        path: '/calendar',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const CalendarScreen(),
        ),
      ),
      // 로그 화면 라우트
      GoRoute(
        path: '/log',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const LogScreen(),
        ),
      ),
      // 설정 화면 라우트
      GoRoute(
        path: '/settings',
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SettingScreen(),
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
