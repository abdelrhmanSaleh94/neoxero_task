import 'package:flutter/material.dart';

class ButtonDetials extends StatelessWidget {
  final String title;
  final Color colorIcon;
  final IconData icon;
  final Function onTap;
  ButtonDetials(
      {@required this.title,
      @required this.icon,
      @required this.colorIcon,
      @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape:  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 100,
          margin: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: colorIcon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
