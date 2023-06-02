import 'package:flutter/material.dart';
import '../constants.dart';

class IconWidget extends StatelessWidget {
  IconWidget({required this.icon, required this.iconName});

  final IconData icon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconName,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
//FontAwesomeIcons.mars,
