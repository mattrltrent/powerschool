import 'package:flutter/material.dart';

class AssignmentTile extends StatelessWidget {

  final String type;
  final String name;
  final String letterGrade;
  final String inOutOf;

  AssignmentTile({@required this.name, @required this.inOutOf, @required this.letterGrade, @required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$type', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.grey),),
                Text('$name', style: TextStyle(fontFamily: 'Baloo', fontSize: 15, color: Colors.black),),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: Row(
                children: <Widget>[
                  Text('$inOutOf', style: TextStyle(fontFamily: 'Baloo', fontSize: 10, color: Colors.black),),
                  SizedBox(
                    width: 8,
                  ),
                  Text('$letterGrade', style: TextStyle(fontFamily: 'Baloo', fontSize: 30, color: Colors.black),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}