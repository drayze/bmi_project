import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {super.key, required this.colorU, required this.cardChild});

  final Color colorU;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colorU,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
