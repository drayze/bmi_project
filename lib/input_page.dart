import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomCardColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      colorU: cardColor,
                      cardChild: CustomeIcon(
                        myIcon: FontAwesomeIcons.mars,
                        myText: 'MALE',
                      )),
                ),
                Expanded(
                  child: ReuseableCard(
                    colorU: cardColor,
                    cardChild: CustomeIcon(
                        myIcon: FontAwesomeIcons.venus, myText: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReuseableCard(
              colorU: cardColor,
              cardChild: Row(),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colorU: cardColor,
                    cardChild: Row(),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colorU: cardColor,
                    cardChild: Row(),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomCardColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
