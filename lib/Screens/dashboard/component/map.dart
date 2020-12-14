import 'package:flutter/material.dart';

class MAP extends StatefulWidget {
  @override
  Map createState() => Map();
}

class Map extends State<MAP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      child: buildColumn(),
    );
  }

  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Map",
          style: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Color(0xff2d2d2d),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 240.00,
          width: 400.00,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 10.0, // soften the shadow
                offset: Offset(0.00, 3.00), //extend the shadow
              )
            ],
            color: Color(0xffb7b7b7),
            borderRadius: BorderRadius.circular(14.00),
          ),
        ),
      ],
    );
  }
}
