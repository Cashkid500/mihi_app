import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/profile/profile.dart';
import 'package:mihi_app/screens/profile/profile_sessions2.dart';
import 'package:mihi_app/screens/profile/profile_settings2.dart';
import '../constants/text_constants.dart';

class ProfileSessionsScreen extends StatefulWidget {
  const ProfileSessionsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSessionsScreen> createState() => _ProfileSessionsScreenState();
}

class _ProfileSessionsScreenState extends State<ProfileSessionsScreen> { 
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
                  child: GestureDetector(
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => ProfileScreen()));
                      },
                  child: Image.asset(MihiAppAssetsPath.backButton, height: 25,)),
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
                  child: Image.asset(MihiAppAssetsPath.chrisAniedi, height: 30.0,),
                ),
              ],
            ),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: icyLilac,
                      border: Border.all(color: mithril),
                    ),
                    child: Image.asset(MihiAppAssetsPath.notification3),
                  ),
                ),
                SizedBox(width: 200.0,),
                Container(
                  height: 33.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff0298A7),
                  ),
                  child: Center(child: Text(MihiAppText.plus, style: TextStyle(color: whiteText, fontSize: 12.0, fontWeight: FontWeight.w500),)),
                ),
              ],
            ),
            SizedBox(height: 40.0,),
            GestureDetector(
              onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) =>ProfileSessions2Screen())
                        );
                        },
              child: Container(
                width: 330.0,
                    height: 137.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Brilliant
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(MihiAppText.excellent, style: TextStyle(color: whiteText, fontSize: 20, fontWeight: FontWeight.w400),),
                        Image.asset(MihiAppAssetsPath.circle)
                      ],
                    ),
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(right :200.0),
              child: Text(MihiAppText.mySchedule, style: TextStyle(color: blackText, fontSize: 18, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Image.asset(MihiAppAssetsPath.musicTheraphy),
                ),
                Image.asset(MihiAppAssetsPath.musicTheraphy2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Image.asset(MihiAppAssetsPath.musicTheraphy3),
                ),
                Image.asset(MihiAppAssetsPath.viewMore),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
