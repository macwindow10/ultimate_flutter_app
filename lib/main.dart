import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_flutter_app/data/constants.dart';
import 'package:ultimate_flutter_app/data/notifiers.dart';
import 'package:ultimate_flutter_app/views/pages/welcome_page.dart';
// import 'package:ultimate_flutter_app/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final bool? themeMode = await preferences.getBool(KConstants.keyThemeMode);
    isDarkModeNotifier.value = themeMode ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.teal,
                  brightness: isDarkMode ? Brightness.dark : Brightness.light)),
          home: WelcomePage(),
        );
      },
    );
  }
}
