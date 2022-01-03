import 'package:flutter/material.dart';
import 'package:flutter_powerschool/dash_screen.dart';
import 'package:flutter_powerschool/more_screen.dart';

class CourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 80, top: 60),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.lightBlueAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Physics 11', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('88%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('91%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('68%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('71%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('F', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('78%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('81%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.lightGreenAccent, Colors.green],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Math 12', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('68%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('93%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('77%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('71%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('F', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('73%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('82%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.deepOrange, Colors.orangeAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('English 11', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('56%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('95%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('56%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('78%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('F', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('56%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('87%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.pinkAccent, Colors.deepOrangeAccent],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('AP Philosophy 11', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('S2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T1', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('86%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('66%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('T2', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('54%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('88%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('F', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('70%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                              Text('77%', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 3),
                            blurRadius: 7,
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Classes', style: TextStyle(fontFamily: 'Baloo', fontSize: 25),),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.lightBlueAccent,
                            child: Text('MT', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Hero(
                tag: 'nav1',
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 5,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 95,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              child: InkWell(
                                splashColor: Colors.lightBlueAccent,
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Icon(
                                        Icons.dashboard,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Dashboard',
                                        style: TextStyle(fontFamily: 'Baloo', fontSize: 11, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              child: InkWell(
                                splashColor: Colors.orangeAccent,
                                onTap: null,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Icon(
                                        Icons.class_,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Classes',
                                        style: TextStyle(fontFamily: 'Baloo', fontSize: 11, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 95,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              child: InkWell(
                                splashColor: Colors.lightGreenAccent,
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MoreScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'More',
                                        style: TextStyle(fontFamily: 'Baloo', fontSize: 11, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
