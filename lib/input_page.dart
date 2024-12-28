import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        Text(
          myText,
          style: const TextStyle(
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}

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
