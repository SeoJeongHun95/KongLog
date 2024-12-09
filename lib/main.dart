import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:konglog/core/theme/app_color.dart';

import 'core/router/router.dart';

void main() async {
  // 빌드 개 쳐 느려짐
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  initializeDateFormatting()
      .then((_) => runApp(const ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: goRouter,
        title: 'KongLog',
        theme: ThemeData(
          splashFactory: NoSplash.splashFactory,
          primaryColor: AppColor.KongBlue1,
        ),
      ),
    );
  }
}
