import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ultimate_flutter_app/views/pages/login_page.dart';
// import 'package:ultimate_flutter_app/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // HeroWidget(),
          Lottie.asset('assets/lotties/background_02.json',
              height: 400, width: double.infinity),
          FittedBox(
            child: Text(
              'Ultimate Flutter App',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 15.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ));
            },
            style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0)),
            child: Text('Get Started'),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0)),
              child: Text('Login'))
        ]),
      ),
    );
  }
}
