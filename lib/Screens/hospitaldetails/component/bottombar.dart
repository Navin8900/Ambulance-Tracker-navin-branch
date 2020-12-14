import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent.withOpacity(0),
      child: Container(
        height: 10.0 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(5.0),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 50.0,
            child: FlatButton(
                color: Color(0xff80cef4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xff80cef4), width: 3.0)),
                child: Text(
                  "Book an Ambulance",
                  style: TextStyle(color: Color(0xff2b2b2b), fontSize: 18.0),
                ),
                onPressed: () {}),
          ),
        ]),
      ),
    );
  }
}
