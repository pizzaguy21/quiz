import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_font_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeFontProvider = Provider.of<ThemeFontProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: themeFontProvider.textStyle),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Select Theme', style: themeFontProvider.textStyle),
            ListTile(
              title: Text('Theme A', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeTheme(0),
            ),
            ListTile(
              title: Text('Theme B', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeTheme(1),
            ),
            ListTile(
              title: Text('Theme C', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeTheme(2),
            ),
            Divider(),
            Text('Select Font', style: themeFontProvider.textStyle),
            ListTile(
              title: Text('Font A (Poppins)', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeFont(0),
            ),
            ListTile(
              title: Text('Font B (Roboto)', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeFont(1),
            ),
            ListTile(
              title: Text('Font C (Lora)', style: themeFontProvider.textStyle),
              onTap: () => themeFontProvider.changeFont(2),
            ),
          ],
        ),
      ),
    );
  }
}
