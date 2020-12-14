import 'package:ambulance/Screens/dashboard/component/HorizView.dart';
import 'package:ambulance/Screens/dashboard/component/bottomBar.dart';
import 'package:ambulance/Screens/dashboard/component/map.dart';
import 'package:ambulance/component/AppBar.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:ambulance/screens/dashboard/component/body.dart';
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
                          icon: Icon(Icons.menu),
                          iconSize: 30.0,
                          color: Colors.white,
                          onPressed: () {}),
                      SizedBox(width: 10.0),
                      Text('Home',
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
                BODY(),
                HorizView(),
                MAP(),
              ],
            ),
          )),
    );
  }
}
