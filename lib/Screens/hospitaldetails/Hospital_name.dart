import 'package:ambulance/Screens/hospitaldetails/component/details.dart';
import 'package:ambulance/Screens/hospitaldetails/component/reviews.dart';
import 'package:ambulance/Screens/hospitaldetails/component/animatedmap.dart';
import 'package:ambulance/Screens/hospitaldetails/component/bottombar.dart';
import 'package:ambulance/component/AppBar.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: IAppBar(
            height: 12 * SizeConfig.heightMultiplier,
            child: Padding(
                padding: EdgeInsets.only(
                  top: 0.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff56163),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0))),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30.0,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      SizedBox(width: 10.0),
                      Text('Hospital Name',
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 4 * SizeConfig.textMultiplier,
                            color: Color(0xffffffff),
                          )),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                    ],
                  ),
                )),
          ),
          bottomNavigationBar: BottomBar(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Animated_map(),
                Details(),
                BODY(),
              ],
            ),
          )),
    );
  }
}
