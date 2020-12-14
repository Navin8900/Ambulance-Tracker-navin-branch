import 'package:ambulance/global/size_config.dart';
import 'package:ambulance/global/style.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Animated_map extends StatefulWidget {
  @override
  _Animated_mapState createState() => _Animated_mapState();
}

// ignore: camel_case_types
class _Animated_mapState extends State<Animated_map> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 0.1),
        child: AnimatedContainer(
          width: selected
              ? MediaQuery.of(context).size.width * 1
              : MediaQuery.of(context).size.width * 1,
          height: selected
              ? MediaQuery.of(context).size.height * 1
              : MediaQuery.of(context).size.height * 0.30,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 10.0, // soften the shadow
                offset: Offset(0.00, 3.00), //extend the shadow
              )
            ],
            color: Colors.grey,
            borderRadius: BorderRadius.circular(27.0),
          ),
          alignment: Alignment.center,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Center(
            child: Text(
              "Map",
              style: reviewStyle,
            ),
          ),
        ),
      ),
    );
  }
}
