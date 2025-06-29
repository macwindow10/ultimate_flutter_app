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
  String confirmedEmail = '123';
  String confirmedPassword = '456';

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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeroWidget(
                  title: 'Login',
                ),
                SizedBox(
                  height: 20.0,
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
                ElevatedButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40.0)),
                  child: Text('Login'),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPassword == controllerPassword.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
