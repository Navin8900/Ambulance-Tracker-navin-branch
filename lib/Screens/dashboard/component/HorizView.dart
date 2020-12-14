import 'package:ambulance/Screens/hospitaldetails/Hospital_name.dart';
import 'package:ambulance/global/size_config.dart';
import 'package:flutter/material.dart';

class HorizView extends StatefulWidget {
  final String categoryName;

  HorizView({this.categoryName});
  @override
  _HorizViewState createState() => _HorizViewState();
}

class _HorizViewState extends State<HorizView> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 18.0),
      child: Container(
        height: 32.5 * SizeConfig.heightMultiplier,
        //height: 150.0,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(6.0),
            )),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  GestureDetector(
                      onTap: () => _onSelected(index),
                      child: Padding(
                        //padding: EdgeInsets.symmetric(horizontal: 6.5 * SizeConfig.widthMultiplier,vertical:1.3 * SizeConfig.heightMultiplier)
                        padding: EdgeInsets.fromLTRB(
                            6.5 * SizeConfig.widthMultiplier,
                            1.3 * SizeConfig.heightMultiplier,
                            0.0,
                            1.3 * SizeConfig.heightMultiplier),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                width: 154.0,
                                height: 178.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Color(0xff000000).withOpacity(0.16),
                                      blurRadius: 10.0, // soften the shadow
                                      offset: Offset(
                                          0.00, 3.00), //extend the shadow
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: const Color(0xffb7b7b7),
                                  border: Border.all(
                                      width: 1.5, color: Color(0xffb7b7b7)),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Mainscreen()));
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                categoryList[index].categoryName,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              );
            }),
      ),
    );
  }
}

List<HorizView> categoryList = [
  HorizView(
    categoryName: 'Hospital Name',
  ),
  HorizView(
    categoryName: 'Hospital Name',
  ),
  HorizView(
    categoryName: 'Hospital Name',
  ),
  HorizView(
    categoryName: 'Hospital Name',
  ),
  HorizView(
    categoryName: 'Hospital Name',
  ),
  HorizView(
    categoryName: 'Others',
  ),
];
