import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 53, 53, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(58, 53, 53, 1.0),
          elevation: 1.5,
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        //MainColumn
        body: Column(
          children: [
            Flexible(
                child: Container(
                    child: Row(
                      //First Row
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      color: Color.fromRGBO(35, 32, 32, 1),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/mars.svg",
                            width: 50,
                          )
                        ],
                      )),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      color: Color.fromRGBO(35, 32, 32, 1),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/venus.svg",
                            width: 50,
                          )
                        ],
                      )),
                ),
              ],
            ))),
            Flexible(
                child: Container(
                    child: Row(
              children: [],
            ))),
            Flexible(
                child: Container(
                    child: Row(
              children: [],
            ))),
            Flexible(
                child: Container(
                    child: Row(
              children: [],
            ))),
          ],
        ),
      ),
    );
  }
}
