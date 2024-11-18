import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';
import 'providers/theme_font_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeFontProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return MaterialApp(
      title: 'Flutter Multi-Theme & Font',
      theme: themeFontProvider.theme,
      home: MainScreen(),
    );
  }
}
