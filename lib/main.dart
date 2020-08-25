import 'package:flutter/cupertino.dart';
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
                    ////First Row
                    child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(35, 32, 32, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(88, 88, 88, 9),
                            offset: Offset(2, 2),
                            blurRadius: 8,
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                      padding: EdgeInsets.all(45),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/mars.svg",
                            width: 90,
                            color: Colors.white,
                          ),
                          Text("Male",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      )),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 32, 32, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color.fromARGB(88, 88, 88, 9),
                              offset: Offset(2, 2),
                              blurRadius: 8,
                            )
                          ]),
                      margin: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                      padding: EdgeInsets.all(45),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/venus.svg",
                            width: 90,
                            color: Colors.white,
                          ),
                          Text("Female",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      )),
                ),
              ],
            ))),
            Flexible(
                child: Container(
                  //second row
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
