import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/invite_friends.dart';
import 'package:mihi_app/screens/profile/profile_sessions.dart';
import 'package:mihi_app/screens/profile/profile_settings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(MihiAppAssetsPath.chrisAniedi),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              MihiAppText.chrisAni,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
                color: blackText,
              ),
              ),
              Text(
                MihiAppText.lag,
                style: TextStyle(
                  color: mithril,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,)
            ),
            SizedBox(height: 50.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const
                              ProfileSettingsScreen()));
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteText,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: icyLilac,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(MihiAppAssetsPath.settingsImage),
                            SizedBox(height: 10.0),
                            Text(MihiAppText.settings, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: mithril),),
                          ]
                        ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: whiteText,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: icyLilac,),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(MihiAppAssetsPath.playlist),
                          SizedBox(height: 10.0),
                          Text(MihiAppText.myPlaylist, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: mithril),),
                        ]
                      ),
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: whiteText,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: icyLilac,),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(MihiAppAssetsPath.goal),
                          SizedBox(height: 10.0),
                          Text(MihiAppText.myGoal, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: mithril),),
                        ]
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: whiteText,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: icyLilac,),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(MihiAppAssetsPath.group),
                          SizedBox(height: 10.0),
                          Text(MihiAppText.groups, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff878787)),
                          ),
                        ]
                      ),
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const ProfileSessionsScreen()));
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteText,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: icyLilac,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(MihiAppAssetsPath.session),
                            SizedBox(height: 10.0),
                            Text(MihiAppText.session, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff878787)),),
                          ]
                        ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const InviteFriendsScreen()));
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteText,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: icyLilac,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(MihiAppAssetsPath.invite),
                            SizedBox(height: 10.0),
                            Text(MihiAppText.invite, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff878787)),
                            ),
                          ]
                        ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(MihiAppAssetsPath.productivity),
            ),
            ],
            ),
      ),
    );
  }
}