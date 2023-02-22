import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tip_calculator/features/navbar/presentation/pages/home.dart';

import 'features/homepage/presentation/pages/homepage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          themeMode: ThemeMode.light,
          home: const Home(),
        );
      },
    );
  }
}
