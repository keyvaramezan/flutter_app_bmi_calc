import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variables
  double sliderValue = 172;
  Color firstcColor = Colors.white;
  Color secondcColor = Colors.white;
  int weight = 62;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
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
              Container(
                  height: 140,
                  ////First Row
                  child: Row(
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(88, 88, 88, 9),
                                  offset: Offset(2, 2),
                                  blurRadius: 8,
                                )
                              ],
                            ),
                            margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                            padding: EdgeInsets.all(20),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  firstcColor = Colors.redAccent;
                                  secondcColor = Colors.white;
                                });
                              },
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/mars.svg",
                                    width: 50,
                                    color: firstcColor,
                                  ),
                                  Text("Male",
                                      style: TextStyle(color: firstcColor)),
                                ],
                              ),
                            )),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(35, 32, 32, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Color.fromARGB(88, 88, 88, 9),
                                    offset: Offset(2, 2),
                                    blurRadius: 8,
                                  )
                                ]),
                            margin: EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                            padding: EdgeInsets.all(20),
                            child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  secondcColor = Colors.redAccent;
                                  firstcColor = Colors.white;
                                });
                              },
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/venus.svg",
                                    width: 50,
                                    color: secondcColor,
                                  ),
                                  Text("Female",
                                      style: TextStyle(color: secondcColor)),
                                ],
                              ),
                            )),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                  padding: EdgeInsets.all(30),
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
                  //SecondRow
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26)),
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
                  )),
              //3thRow
              Container(
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
                        margin: EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text("weight",
                                style: TextStyle(color: Colors.white70)),
                            Text(weight.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //plusButton
                                FloatingActionButton(
                                  onPressed: () => {
                                    setState(() {
                                      ++weight;
                                    })
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black26,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () => {
                                    setState(() {
                                      --weight;
                                    })
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black26,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color.fromARGB(88, 88, 88, 9),
                                offset: Offset(2, 2),
                                blurRadius: 8,
                              )
                            ]),
                        margin: EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text("age",
                                style: TextStyle(color: Colors.white70)),
                            Text(age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () => {
                                    setState(() {
                                      ++age;
                                    })
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black26,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () => {
                                    setState(() {
                                      --age;
                                    })
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black26,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              )),
              Flexible(
                fit: FlexFit.tight,
                child: MaterialButton(
                  onPressed: () {
                    String status;
                    double bmi = weight / math.pow((sliderValue / 100), 2);
                    if (bmi < 18.5)
                      status = "under weight";
                    else if (bmi > 18.5 && bmi < 24.9)
                      status = "healthy weight";
                    else if (bmi > 24.9 && bmi < 29.9)
                      status = "over weight";
                    else if (bmi > 30)
                      status = "obese";
                    else
                      status = "error! your bmi is $bmi";

                    showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                              title: Text("Your status is .."),
                              content: Text(status),
                              actions: [
                                FlatButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text("dismiss"))
                              ],
                            ));
                  },
                  color: Colors.redAccent,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0))),
                  minWidth: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
