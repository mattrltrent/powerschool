import 'package:flutter/material.dart';
import 'package:flutter_powerschool/course_screen.dart';
import 'package:flutter_powerschool/more_screen.dart';
import 'grade_tile.dart';

class DashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6), // dark white
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
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 75,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('GPA', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                                Container(
                                  width: 45,
                                  color: Colors.black,
                                  height: 2,
                                ),
                                Text('3.4', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                              ],
                            ),
                          ),
                          Container(
                            width: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Meal Balance', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                                Container(
                                  width: 45,
                                  color: Colors.black,
                                  height: 2,
                                ),
                                Text('\$14.25', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.green),),
                              ],
                            ),
                          ),
                          Container(
                            width: 75,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('Fees', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),),
                                Container(
                                  width: 45,
                                  color: Colors.black,
                                  height: 2,
                                ),
                                Text('\$15.00', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.red),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          GradeTile(
                            block: 'A',
                            col: 1,
                            course: 'Physics 11',
                            grade: 'A',
                            notifications: 3,
                            percent: 89,
                            room: 225,
                            teacher: 'Mr. Phils',
                          ),
                          GradeTile(
                            block: 'B',
                            col: 5,
                            course: 'Math 12',
                            grade: 'B+',
                            notifications: 0,
                            percent: 84,
                            room: 101,
                            teacher: 'Mrs. Douglass',
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          GradeTile(
                            block: 'C',
                            col: 2,
                            course: 'English 11',
                            grade: 'A-',
                            notifications: 0,
                            percent: 86,
                            room: 99,
                            teacher: 'Mrs. McCloud',
                          ),
                          GradeTile(
                            block: 'D',
                            col: 4,
                            course: 'AP Philosophy 11',
                            grade: 'C',
                            notifications: 0,
                            percent: 66,
                            room: 204,
                            teacher: 'Mr. Wong',
                          ),
                        ],
                      ),
                    ],
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
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(child: Text('Attendance', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),)),
                          Center(
                            child: Container(
                              height: 2,
                              color: Colors.black,
                              width: 75,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Absent - Physics 11', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('22/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Excused Absence - Math 12', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('18/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Medical Absence - English 11', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('02/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
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
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(child: Text('School Bulletins', style: TextStyle(fontFamily: 'Baloo', fontSize: 20, color: Colors.black),)),
                          Center(
                            child: Container(
                              height: 2,
                              color: Colors.black,
                              width: 75,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Updated Dress Code', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('29/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Spirit Week', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('22/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('New Learning Support Staff', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
                                Text('01/08/2020', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
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
                          Text('Dashboard', style: TextStyle(fontFamily: 'Baloo', fontSize: 25),),
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
                                        Icons.dashboard,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        'Dashboard',
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

