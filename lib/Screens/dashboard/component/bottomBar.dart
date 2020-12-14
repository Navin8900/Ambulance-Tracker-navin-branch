import 'package:flutter/material.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:ambulance/global/style.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent.withOpacity(0),
      child: Container(
        height: 10.5 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0.00, -4.00),
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        onPressed: () {},
                        iconSize: 30.0,
                      ),
                    ),
                    Container(
                        transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                        child: Text(
                          "Home",
                          style: bottomBarStyle,
                        )),
                  ],
                ),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on_outlined),
                        iconSize: 30.0,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                        transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                        child: Text(
                          "Live Tracking",
                          style: bottomBarStyle,
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
