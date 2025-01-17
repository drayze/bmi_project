import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({
    required this.colorU,
    required this.cardChild,
    required this.onPress,
  });

  final Color colorU;
  final Widget cardChild;
  final GestureTapCallback? onPress;

  @override
  Widget build(BuildContext context) {
    //var height = 70;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colorU, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
