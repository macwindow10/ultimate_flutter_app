import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ultimate_flutter_app/views/widget_tree.dart';
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
          Text(
            'Ultimate Flutter App',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 20.0),
          ),
          FilledButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ));
              },
              child: Text('Login'))
        ]),
      ),
    );
  }
}
