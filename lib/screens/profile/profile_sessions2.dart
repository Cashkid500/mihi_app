import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/profile/profile_sessions3.dart';
import 'package:mihi_app/screens/profile/profile_settings2.dart';

import '../constants/text_constants.dart';

class ProfileSessions2Screen extends StatefulWidget {
  const ProfileSessions2Screen({Key? key}) : super(key: key);

  @override
  State<ProfileSessions2Screen> createState() => _ProfileSessions2ScreenState();
}

class _ProfileSessions2ScreenState extends State<ProfileSessions2Screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                  child: Image.asset(
                    MihiAppAssetsPath.backButton,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 90.0),
                  child: Text(
                    MihiAppText.mySessions,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: mithril),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 80.0),
                  child: Image.asset(
                    MihiAppAssetsPath.chrisAniedi,
                    height: 30.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: Text(
                MihiAppText.allSchedule,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: blackText),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 77.0,
              width: 338.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: whiteText,
                border: Border.all(color: mithril),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: icyLilac,
                        border: Border.all(color: Brilliant),
                      ),
                      child: Image.asset(MihiAppAssetsPath.coil),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          MihiAppText.musicTherapy,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: blackText),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          MihiAppText.timeDate,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mithril),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: mithril),
                      ),
                      child: Image.asset(MihiAppAssetsPath.notification3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 77.0,
              width: 338.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: whiteText,
                border: Border.all(color: mithril)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: icyLilac,
                        border: Border.all(color: Brilliant),
                      ),
                      child: Image.asset(MihiAppAssetsPath.coil),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          MihiAppText.musicTherapy,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: blackText),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          MihiAppText.timeDate,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mithril),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Brilliant,
                      ),
                      child: Image.asset(MihiAppAssetsPath.notification3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 77.0,
              width: 338.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: whiteText,
                border: Border.all(color: mithril)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: icyLilac,
                        border: Border.all(color: Brilliant),
                      ),
                      child: Image.asset(MihiAppAssetsPath.coil),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          MihiAppText.musicTherapy,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: blackText),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          MihiAppText.timeDate,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mithril),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: mithril),
                      ),
                      child: Image.asset(MihiAppAssetsPath.notification3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 77.0,
              width: 338.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: whiteText,
                border: Border.all(color: mithril)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: icyLilac,
                        border: Border.all(color: Brilliant),
                      ),
                      child: Image.asset(MihiAppAssetsPath.coil),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          MihiAppText.musicTherapy,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: blackText),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          MihiAppText.timeDate,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: mithril),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Brilliant,
                      ),
                      child: Image.asset(MihiAppAssetsPath.notification3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>ProfileSessions3Screen())
              );
              },
              child: Container(
                height: 77.0,
                width: 338.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: whiteText,
                    border: Border.all(color: mithril)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: whiteout,
                          border: Border.all(color: Brilliant),
                        ),
                        child: Image.asset(MihiAppAssetsPath.coil),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            MihiAppText.musicTherapy,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: blackText),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                          MihiAppText.timeDate,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: mithril),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(color: mithril),
                        ),
                        child: Image.asset(MihiAppAssetsPath.notification3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
