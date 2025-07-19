import 'package:clone_spotify_juillet/utils/theme/custom_themes/test_showdialog.dart';
import 'package:flutter/material.dart';

import 'screens/home/route_pages.dart';
import 'screens/login/signin_page.dart';
import 'screens/login/signup_page.dart';
import 'screens/login/splash_page.dart';
import 'screens/test_theme/test_appbar.dart';
import 'screens/test_theme/test_bottomsheet.dart';
import 'screens/test_theme/test_checkbox.dart';
import 'screens/test_theme/test_chip.dart';
import 'screens/test_theme/test_elevatebutton.dart';
import 'screens/test_theme/test_outlinedbutton.dart';
import 'screens/test_theme/test_text.dart';
import 'screens/test_theme/test_textformfield.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      home: RoutePages(),
    );
  }
}
