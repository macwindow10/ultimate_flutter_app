import 'package:flutter/material.dart';
import 'package:ultimate_flutter_app/views/widget_tree.dart';
import 'package:ultimate_flutter_app/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void dispose() {
    print('dispose');
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Login',
            ),
            SizedBox(
              height: 5.0,
            ),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onEditingComplete: () {
                // setState(() {});
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onEditingComplete: () {
                // setState(() {});
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ));
              },
              style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0)),
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
