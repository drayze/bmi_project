import 'package:flutter/material.dart';

const textStyleContent = const TextStyle(
  color: Color(0xff8d8e98),
);

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({super.key, required this.myIcon, required this.myText});

  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 50.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(myText, style: textStyleContent),
      ],
    );
  }
}
