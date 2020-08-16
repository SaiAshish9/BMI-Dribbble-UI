import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 63.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI CALCULATOR',
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Row(children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? activeCardColour
                    : inactiveCardColour,
                cardChild:
                    IconContent(label: 'MALE', icon: FontAwesomeIcons.mars)),
          )),
          Expanded(
              child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild: IconContent(
                      label: 'FEMALE', icon: FontAwesomeIcons.venus))),
        ])),
        Expanded(child: ReusableCard(colour: activeCardColour)),
        Expanded(
            child: Row(children: <Widget>[
          Expanded(child: ReusableCard(colour: activeCardColour)),
          Expanded(child: ReusableCard(colour: activeCardColour)),
        ])),
        Container(
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight)
      ]),
      // ignore: missing_required_param
      // floatingActionButton: Theme(
      //   data: ThemeData.light(),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add, color: Color(0xFF0A0E21)),
      //   ),
      // ),
    );
  }
}
