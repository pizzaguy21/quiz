import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_font_provider.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen', style: themeFontProvider.textStyle),
      ),
      body: Container(
        color: themeFontProvider.theme.scaffoldBackgroundColor,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is the main screen', style: themeFontProvider.textStyle),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: themeFontProvider.theme.colorScheme.primary, // Menggunakan backgroundColor
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Text('Go to Settings', style: themeFontProvider.textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
