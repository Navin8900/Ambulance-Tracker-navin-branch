import 'package:ambulance/global/size_config.dart';
import 'package:ambulance/global/style.dart';
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
      child: buildSingleChildScrollView(),
    );
  }

  SingleChildScrollView buildSingleChildScrollView() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 2,
            SizeConfig.heightMultiplier * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Reviews",
              style: ambulanceReqStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.16),
                    blurRadius: 10.0, // soften the shadow
                    offset: Offset(0.00, 3.00), //extend the shadow
                  )
                ],
                color: Color(0xff80cef4),
                borderRadius: BorderRadius.circular(27.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.heightMultiplier * 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Reviews",
                    //   style: reviewStyle,
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
