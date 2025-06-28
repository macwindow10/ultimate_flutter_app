import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? item = "Item 1";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              items: <String>['Item 1', 'Item 2', 'Item 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
                setState(() {
                  item = value;
                });
              },
              value: item,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {},
            ),
            Text(controller.text),
            Checkbox.adaptive(
              value: isChecked,
              tristate: true,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile.adaptive(
              value: isChecked,
              tristate: true,
              title: const Text('Click Me'),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
                value: isSwitched,
                title: const Text('Switch Me'),
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
            Slider.adaptive(
              value: sliderValue,
              max: 10,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
                print(sliderValue);
              },
            ),
            GestureDetector(
                onTap: () {
                  print('image clicked');
                },
                child: Image.asset('assets/images/bg.jpg')),
            InkWell(
              splashColor: Colors.tealAccent,
              onTap: () {
                print('inkwell clicked');
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.lightBlueAccent,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('button clicked');
                },
                child: const Text('Click Me')),
            BackButton(),
            CloseButton(),
          ],
        ),
      ),
    );
  }
}
