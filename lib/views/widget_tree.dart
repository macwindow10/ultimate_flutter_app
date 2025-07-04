import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_flutter_app/data/constants.dart';
import 'package:ultimate_flutter_app/data/notifiers.dart';
import 'package:ultimate_flutter_app/views/pages/home_page.dart';
import 'package:ultimate_flutter_app/views/pages/profile_page.dart';
import 'package:ultimate_flutter_app/views/pages/settings_page.dart';
import 'package:ultimate_flutter_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ultimate Flutter App'),
        actions: [
          IconButton(
              onPressed: () async {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
                final SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                await preferences.setBool(
                    KConstants.keyThemeMode, isDarkModeNotifier.value);
              },
              icon: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
                },
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
