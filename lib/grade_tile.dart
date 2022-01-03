import 'package:flutter/material.dart';
import 'package:flutter_powerschool/course_screen.dart';
import 'package:flutter_powerschool/course_specific_screen.dart';

class GradeTile extends StatelessWidget {

  final int notifications;
  final int percent;
  final String grade;
  final String course;
  final String block;
  final int room;
  final String teacher;
  final int col; // 1-6

  GradeTile({@required this.block, @required this.grade, @required this.course, @required this.notifications, @required this.percent, @required this.room, @required this.teacher, @required this.col});

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

  double getAlert() {
    try {
      if (notifications <= 0) {
        return 0.0;
      }
      else {
        return 10.0;
      }
    }
    catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ClassSpecificScreen(
                  notifications: notifications,
                  percent: percent,
                  grade: grade,
                  course: course,
                  block: block,
                  room: room,
                  teacher: teacher,
                  col: col,
                )),
          );
        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: getColor(),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(2, 1),
                  blurRadius: 8,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: getAlert(),
                      backgroundColor: Colors.red,
                      child: Text('$notifications', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),),
                    ),
                    Text('$percent%', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 15),)
                  ],
                ),
              ),
              Center(child: Text('$grade', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 65),)),
              Padding(child: Text('$course', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),), padding: EdgeInsets.only(left: 10),),
              Padding(child: Text('Block $block', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),), padding: EdgeInsets.only(left: 10),),
              Padding(child: Text('Room $room', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),), padding: EdgeInsets.only(left: 10),),
              Padding(child: Text('$teacher', style: TextStyle(fontFamily: 'Baloo', color: Colors.white, fontSize: 13),), padding: EdgeInsets.only(left: 10, bottom: 8),),
            ],
          ),
        ),
      ),
    );
  }
}