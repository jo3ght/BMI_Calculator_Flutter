import 'package:flutter/material.dart';
import 'package:review_2/widgets/ContainerBox.dart';
import 'package:review_2/widgets/AgeBox.dart';

class Result extends StatelessWidget {
  Result(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "Your result",
              style: labelHeight,
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerBox(
              colour: Colors.black45,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "$resultText",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "$bmiResult",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 130,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "$interpretation",
                    style: labelTextStyle,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  "Re - Calculate",
                  style: lbButtonText,
                ),
              ),
              color: Colors.redAccent,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
