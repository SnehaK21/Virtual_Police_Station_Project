import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'account_page.dart';
import 'info.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> photos = [
    'assets/photo4.png',
    'assets/police1.jpg',
    'assets/police2.jpg',
    'assets/police3.jpg'
  ];

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/photo4.png',
    'assets/police1.jpg',
    'assets/police2.jpg',
    'assets/police3.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Virtual Police Station',
        ),
        centerTitle: true,
      ),
      // backgroundColor: Color.fromARGB(100, 202, 167, 127),
      // backgroundColor: Color.fromARGB(100, 196, 150, 98),

      body: SafeArea(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //--------------------------------MENU ICON----------------------------------------//
                  /* Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu, color: Colors.black, size: 48.0),
                    ],
                  ),
                ),*/
                  //--------------------------------HEADING TEXT-----------------------------------------//
                  /*Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    "Virtual Police Station",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0),
                  ),
                ),*/
                  //----------------------------------------- Carousel ----------------------------------//

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        carouselSlider = CarouselSlider(
                          height: 300.0,
                          initialPage: 0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 5000),
                          pauseAutoPlayOnTouch: Duration(seconds: 10),
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                          items: imgList.map((imgUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    //color: Color.fromARGB(100, 202, 167, 127),
                                    image: DecorationImage(
                                        image: AssetImage(imgUrl),
                                        fit: BoxFit.contain),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(imgList, (index, url) {
                            return Container(
                              width: 8.0,
                              height: 5.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.indigo[600]
                                    : Colors.lightBlue[200],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),

                  //----------------------------    MENU  -----------------------------------------------//
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Center(
                      child: Wrap(
                        spacing: 15.0,
                        runSpacing: 20.0,
                        children: <Widget>[
                          // ---------------------- box 1 ----------------//
                          SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: Card(
                              elevation: 10,

                              shadowColor: Colors.indigo[600],
                              //color: Colors.greenAccent[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.indigo[900],
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/contract.png',
                                      width: 60.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      child: Text(
                                        'File Complaint',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      // color: Color.fromARGB(100, 218, 147, 67),
                                      color: Colors.lightBlue[500],
                                      textColor: Colors.white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StepperDemo()));
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //---------------------------- box 2 -----------------------//
                          SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.indigo[600],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.indigo[900],
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/info.png',
                                      width: 60.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      child: Text(
                                        'Info',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      color: Colors.lightBlue[500],
                                      textColor: Colors.white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FoldingCellMultipleCardsDemo()));
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //------------------------------ box 3 -------------------------- //
                          SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.indigo[600],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.indigo[900],
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/customer-service.png',
                                      width: 60.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      child: Text(
                                        'Chatbot',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      color: Colors.lightBlue[500],
                                      textColor: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //------------------------- box 4 ------------------//
                          SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.indigo[600],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.indigo[900],
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/customer-service.png',
                                      width: 60.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                      child: Text(
                                        'xyz',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15.0),
                                      ),
                                      color: Colors.lightBlue[500],
                                      textColor: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
