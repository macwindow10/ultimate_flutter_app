import 'package:flutter/material.dart';
import 'package:ultimate_flutter_app/data/constants.dart';
import 'package:ultimate_flutter_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeroWidget(
                title: 'Ultimate Flutter App',
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Basic Layout', style: KTextStyle.titleTealText),
                        Text('Description of the Card',
                            style: KTextStyle.descriptionText),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
