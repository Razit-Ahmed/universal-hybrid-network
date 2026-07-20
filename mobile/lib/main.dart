import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_strings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: UHNApp(),
    ),
  );
}

class UHNApp extends StatelessWidget {
  const UHNApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,

      theme: AppTheme.darkTheme,

      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}