import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_powerschool/course_screen.dart';
import 'package:flutter_powerschool/dash_screen.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 60, bottom: 80),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Column(
                        children: <Widget>[
                          Text('User Information', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                          Container(
                            width: 45,
                            color: Colors.black,
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Name:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('Dave Davidson', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Authority:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('Student', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Grade:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('11', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Grad Year:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('2021', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Column(
                        children: <Widget>[
                          Text('School Information', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                          Container(
                            width: 45,
                            color: Colors.black,
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('School:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('Big Brain Academy', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('District Code:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('ABCD', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Phone:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('###-###-####', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Fax:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('###-###-####', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity, // old height 500, current height adjusts to child height
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 1),
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Column(
                        children: <Widget>[
                          Text('Technical Information', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                          Container(
                            width: 45,
                            color: Colors.black,
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Version:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('1.0.8', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('App Support:', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('fakesupportemail@gmail.com', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
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
                          Text('More', style: TextStyle(fontFamily: 'Baloo', fontSize: 25),),
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
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CourseScreen()),
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
                                        Icons.class_,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Classes',
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
                                splashColor: Colors.lightGreenAccent,
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
                                        Icons.more_horiz,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'More',
                                        style: TextStyle(fontFamily: 'Baloo', fontSize: 11, color: Colors.black),
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
