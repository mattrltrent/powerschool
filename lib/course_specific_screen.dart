import 'package:flutter/material.dart';
import 'package:flutter_powerschool/course_screen.dart';
import 'package:flutter_powerschool/dash_screen.dart';
import 'package:flutter_powerschool/more_screen.dart';
import 'assignment_tile.dart';

class ClassSpecificScreen extends StatelessWidget {

  final int notifications;
  final int percent;
  final String grade;
  final String course;
  final String block;
  final int room;
  final String teacher;
  final int col; // 1-6

  ClassSpecificScreen({@required this.col, @required this.notifications, @required this.teacher, @required this.room, @required this.block, @required this.course, @required this.grade, @required this.percent});

  List<Widget> assignments1 = [
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Forces in systems',
      letterGrade: 'A+',
      inOutOf: '51 / 51',
    ),
    AssignmentTile(
      type: 'Assignments',
      name: 'Chapter 6 questions',
      letterGrade: 'B-',
      inOutOf: '26 / 34',
    ),
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Projectiles and waves',
      letterGrade: 'B  ',
      inOutOf: '52 / 67',
    ),
  ];

  List<Widget> assignments2 = [
    AssignmentTile(
      type: 'Projects',
      name: 'Quadratic functions line art',
      letterGrade: 'A  ',
      inOutOf: '44 / 49',
    ),
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Factoring polynomials',
      letterGrade: 'A-',
      inOutOf: '12 / 14',
    ),
    AssignmentTile(
      type: 'Projects',
      name: 'Quadratic function presentation',
      letterGrade: 'B  ',
      inOutOf: '21 / 27',
    ),
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Radicals',
      letterGrade: 'C  ',
      inOutOf: '17 / 28',
    ),
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Roots and powers',
      letterGrade: 'B  ',
      inOutOf: '11 / 15',
    ),
    AssignmentTile(
      type: 'Projects',
      name: 'Coronavirus graphing',
      letterGrade: 'A-',
      inOutOf: '88 / 95',
    ),
  ];

  List<Widget> assignments3 = [
    AssignmentTile(
      type: 'Assignments',
      name: 'Single paragraph response',
      letterGrade: 'A+',
      inOutOf: '19 / 19',
    ),
    AssignmentTile(
      type: 'Projects',
      name: 'Famous poems story',
      letterGrade: 'B-',
      inOutOf: '12 / 15',
    ),
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Rhetor 101',
      letterGrade: 'A  ',
      inOutOf: '13 / 14',
    ),
  ];

  List<Widget> assignments4 = [
    AssignmentTile(
      type: 'Tests & Quizzes',
      name: 'Probability of decisions',
      letterGrade: 'A  ',
      inOutOf: '17 / 18',
    ),
    AssignmentTile(
      type: 'Lab',
      name: 'Probing brainwaves',
      letterGrade: 'C-',
      inOutOf: '13 / 19',
    ),
  ];

  Gradient getColor() {
    switch (col) {
      case 1:
        {
          return LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      case 2:
        {
          return LinearGradient(
            colors: [Colors.deepOrange, Colors.orangeAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      case 3:
        {
          return LinearGradient(
            colors: [Colors.deepPurple, Colors.lightBlueAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      case 4:
        {
          return LinearGradient(
            colors: [Colors.pinkAccent, Colors.deepOrangeAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      case 5:
        {
          return LinearGradient(
            colors: [Colors.lightGreenAccent, Colors.green],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      case 6:
        {
          return LinearGradient(
            colors: [Colors.purpleAccent, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
      default:
        {
          return LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          );
        }
        break;
    }
  }

  int getAbsenses() {
    switch (block){
      case 'A': {
        return 1;
      }
      break;
      case 'B': {
        return 3;
      }
      break;
      case 'C': {
        return 5;
      }
      break;
      case 'D': {
        return 2;
      }
      break;
    }
  }

  List getAssignments() {
    switch (block){
      case 'A': {
        return assignments1;
      }
      break;
      case 'B': {
        return assignments2;
      }
      break;
      case 'C': {
        return assignments3;
      }
      break;
      case 'D': {
        return assignments4;
      }
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 210, bottom: 80),
              child: Column(
                children: getAssignments(),
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
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
                        gradient: getColor(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 3),
                            blurRadius: 7,
                          ),
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 0,
                                backgroundColor: Colors.red,
                                child: Text('$notifications', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),),
                              ),
                              Text('$percent%', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),)
                            ],
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Center(child: Text('$grade', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 65),)),
                            Padding(child: Text('$course', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),), padding: EdgeInsets.only(left: 20, top: 75),),
                            Padding(child: Text('Block $block', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),), padding: EdgeInsets.only(left: 20, top: 90),),
                            Padding(child: Text('Room $room', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),), padding: EdgeInsets.only(left: 20, top: 105),),
                            Padding(child: Text('$teacher', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),), padding: EdgeInsets.only(left: 20, top: 120, bottom: 8),),
                            Padding(
                              padding: EdgeInsets.only(left: 255, top: 78, bottom: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 28),
                                    child: Row(
                                      textBaseline: TextBaseline.alphabetic,
                                      children: <Widget>[
                                        Icon(Icons.person, color: Colors.white, size: 35,),
                                        SizedBox(width: 2),
                                        Padding(child: Text('${getAbsenses()}', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 25),), padding: EdgeInsets.only(top: 3),),
                                      ],
                                    ),
                                  ),
                                  Text('Absences', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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
                                  Navigator.push(
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
                                onTap: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CourseScreen()),
                                );},
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
                                  Navigator.push(
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


