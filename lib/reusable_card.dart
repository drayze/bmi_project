import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    required this.colorU,
    required this.cardChild,
    //required Null Function() this.onPress,
  });

  final Color colorU;
  final Widget cardChild;
  //final Function onPress;

  @override
  Widget build(BuildContext context) {
    //var height = 70;
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colorU,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
