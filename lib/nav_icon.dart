import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {

  final IconData icon;
  final String name;
  final Color spashCol;
  final Color col;

  NavIcon({@required this.icon, @required this.name, @required this.spashCol, @required this.col});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          child: InkWell(
            splashColor: spashCol,
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 7,
                  ),
                  Icon(
                      icon,
                    size: 25,
                    color: col,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontFamily: 'Baloo', fontSize: 11, color: col),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
