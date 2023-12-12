import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Statistics"),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          height: 300,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(padding: EdgeInsets.only(top: 15.0)),
              RichText(
                  text: TextSpan(
                text: "Global Cases of ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: ' COVID 19', style: TextStyle(color: Colors.cyan)),
                ],
              )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  child: ListView(
                      // Βαζω οριζόντιο scroll.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 180,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                      text: TextSpan(
                                    text: "  \nMale ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '\n Confirmed \n Cases ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '\n \n \n 59.5%',
                                          style: TextStyle(color: Colors.cyan)),
                                    ],
                                  )),
                                ],
                              )),
                        ),
                        Container(
                          width: 180,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                      text: TextSpan(
                                    text: "  \nFemale ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '\n Confirmed \n Cases ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: '\n \n \n 40.5%',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  )),
                                ],
                              )),
                        )
                      ])),
            ]),
          ),
        ));
  }
}
