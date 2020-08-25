import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variables
  double sliderValue = 172;

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
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/mars.svg",
                            width: 50,
                            color: Colors.white,
                          ),
                          Text("Male", style: TextStyle(color: Colors.white)),
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
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/venus.svg",
                            width: 50,
                            color: Colors.white,
                          ),
                          Text("Female", style: TextStyle(color: Colors.white)),
                        ],
                      )),
                ),
              ],
            ))),
            Flexible(
                child: Container(
                    margin: EdgeInsets.fromLTRB(8.0, 8.0 , 8.0, 8.0),
                    padding: EdgeInsets.all(10),
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
                    //second row
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "height",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Row(
                              children: [
                                Text(sliderValue.toString().substring(0, 3),
                                    style: TextStyle(color: Colors.white,fontSize: 26)),
                                Text("cm",
                                    style: TextStyle(color: Colors.white70))
                              ],
                            ),
                            CupertinoSlider(
                                activeColor: Colors.redAccent,
                                value: sliderValue,
                                min: 120.0,
                                max: 240.0,
                                divisions: 120,
                                onChanged: (c) {
                                  setState(() {
                                    sliderValue = c;
                                  });
                                }),
                          ],
                        )
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
          ],
        ),
      ),
    );
  }
}
