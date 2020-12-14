import 'package:flutter/material.dart';

class BODY extends StatefulWidget {
  @override
  Body createState() => Body();
}

class Body extends State<BODY> {
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
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w600,
                fontSize: 21,
                color: Color(0xff2d2d2d),
              ),
            ),
            Container(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your precise location or tap on the GPS \nbutton for auto-detection.",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                color: Color(0xff888888),
              ),
            ),
            Container(),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 14.0),
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.white60,
                filled: true,
                hintText: "Enter your precise location.",
                labelStyle: TextStyle(fontSize: 15.0),
                labelText: 'Your Location',
                suffixIcon: Icon(Icons.location_on),
                border: new OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff2d2d2d),
                  ),
                  borderRadius: BorderRadius.circular(9.00),
                )),
            validator: (value) {
              if (value.isEmpty) {
                return 'Cannot be Empty!';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Nearest Hospitals",
          style: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Color(0xff2d2d2d),
          ),
        ),
        SizedBox(
          height: 9.0,
        ),
      ],
    );
  }
}
