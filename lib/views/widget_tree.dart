import 'package:flutter/material.dart';
import 'package:ultimate_flutter_app/views/pages/home_page.dart';
import 'package:ultimate_flutter_app/views/pages/profile_page.dart';
import 'package:ultimate_flutter_app/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ultimate Flutter App')),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
