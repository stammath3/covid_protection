import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../third_route.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid 19"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.only(top: 15.0)),
          RichText(
              text: TextSpan(
            text: "Sympotoms of ",
            style: TextStyle(color: Colors.black, fontSize: 25),
            children: <TextSpan>[
              TextSpan(text: ' COVID 19', style: TextStyle(color: Colors.cyan)),
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
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/headache.jpg'),
                              height: 160,
                              width: 180,
                            ),
                            Text('Headache')
                          ],
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/cold.jpg'),
                              height: 160,
                              width: 180,
                            ),
                            Text('Cold')
                          ],
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/cough.jpg'),
                              height: 160,
                              width: 180,
                            ),
                            Text('Cough')
                          ],
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/fever.jpg'),
                              height: 160,
                              width: 180,
                            ),
                            Text('Fever')
                          ],
                        )),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 135.0,
            child: ListView(
                // Βαζω οριζόντιο scroll.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 350,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/global.png'),
                                height: 120,
                                width: 130,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(" Overview \n 21.000116"),
                              ),
                              TextButton(
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/point.png'),
                                    height: 50,
                                    width: 120,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdRoute()),
                                    );
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              side: BorderSide(
                                                  color: Colors.white))))),
                            ],
                          )),
                        )),
                  ),
                ]),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 100.0,
              child: ListView(
                // Βαζω οριζόντιο scroll.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 150,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/distance.jpg'),
                                height: 120,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' DISTANCE',
                                        style: TextStyle(color: Colors.cyan)),
                                    TextSpan(
                                        text: ' \n Keep distances',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ],
                                )),
                              ),
                            ],
                          )),
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 150,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/mask.jpg'),
                                height: 120,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' MASK',
                                        style: TextStyle(color: Colors.cyan)),
                                    TextSpan(
                                        text: ' \n Wear your mask',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ],
                                )),
                              ),
                            ],
                          )),
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 150,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/hygiene.jpg'),
                                height: 120,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' HYGIENE',
                                        style: TextStyle(color: Colors.cyan)),
                                    TextSpan(
                                        text: ' \n Keep hygiene',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ],
                                )),
                              ),
                            ],
                          )),
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 150,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/gloves.jpg'),
                                height: 120,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Gloves',
                                        style: TextStyle(color: Colors.cyan)),
                                    TextSpan(
                                        text: ' \n Wear gloves',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ],
                                )),
                              ),
                            ],
                          )),
                        )),
                  ),
                  Container(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: SizedBox(
                          width: 150,
                          height: 125,
                          child: Container(
                              child: ListView(
                            // Βαζω οριζόντιο scroll.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/images/wash.jpg'),
                                height: 120,
                                width: 70,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' WASH',
                                        style: TextStyle(color: Colors.cyan)),
                                    TextSpan(
                                        text: ' \n Wash your hands',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ],
                                )),
                              ),
                            ],
                          )),
                        )),
                  ),
                ],
              )),
        ]),
      )),
    );
  }
}
