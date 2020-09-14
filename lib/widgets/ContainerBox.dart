import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(fontSize: 18, color: Colors.white);
const labelHeight =
    TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w900);

const activeColor = Colors.black45;
const inActiveColor = Colors.black26;

const lbButtonText = TextStyle(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class ContainerBox extends StatelessWidget {
  ContainerBox({this.colour, this.cardChild});
  Color colour;
  Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}

class GenderBox extends StatelessWidget {
  GenderBox({this.textGender, this.iconGender});

  final String textGender;
  final IconData iconGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconGender,
          size: 80,
        ),
        SizedBox(height: 16),
        Text(
          textGender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
