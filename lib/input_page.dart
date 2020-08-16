import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
        ])),
        Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
        Expanded(
            child: Row(children: <Widget>[
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
        ])),
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

class ReusableCard extends StatelessWidget {
  Color colour;

  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
