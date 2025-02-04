import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:play_tracker/app_router.dart';

import 'di/inject_dependencies.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();

  runApp(const ProviderScope(
    child: MyApp(),
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      title: 'i nori',
      theme: ThemeData.light(), // 라이트 모드 테마
      darkTheme: ThemeData.dark(), // 다크 모드 테마
      themeMode: ThemeMode.system, // 시스템 테마에 따라 자동 전환
    );
  }
}

