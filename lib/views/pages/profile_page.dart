import 'package:flutter/material.dart';
import 'package:ultimate_flutter_app/data/notifiers.dart';
import 'package:ultimate_flutter_app/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        ListTile(
          title: Text('Logout'),
          onTap: () {
            selectedPageNotifier.value = 0;
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return WelcomePage();
              },
            ));
          },
        )
      ]),
    );
  }
}
