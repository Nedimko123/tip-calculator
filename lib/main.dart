import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tip_calculator/features/navbar/presentation/pages/home.dart';
import 'package:tip_calculator/features/settings/domain/providers.dart';

import 'features/homepage/presentation/pages/homepage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final themeMode = ref.watch(isDarkModeProvider);
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Tip Calculator',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
          darkTheme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: Colors.red,
              brightness: Brightness.dark),
          themeMode: themeMode.maybeWhen(
              data: (themeMode) => themeMode ? ThemeMode.dark : ThemeMode.light,
              orElse: () => ThemeMode.dark),
          home: const Home(),
        );
      },
    );
  }
}
