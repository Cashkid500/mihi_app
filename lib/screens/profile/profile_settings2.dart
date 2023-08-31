import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/profile/edit_profile.dart';

class ProfileSettings2Screen extends StatefulWidget {
  const ProfileSettings2Screen({Key? key}) : super(key: key);

  @override
  State<ProfileSettings2Screen> createState() => _ProfileSettings2ScreenState();
}

class _ProfileSettings2ScreenState extends State<ProfileSettings2Screen> {
  bool _switchValue = false;
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
                child: Image.asset(MihiAppAssetsPath.backButton, height: 25.0,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 90.0),
                child: Text("My Profile", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 80.0),
                child: Text("Update", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: spaceInvader),),
              ),
            ],
          ),
          SizedBox(height: 60.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(MihiAppAssetsPath.chrisAniedi, height: 80.0,),
              ),
              SizedBox(width: 20.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Text("Chris Aniedi", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: sundayNiqab),),
                  ),
                  SizedBox(height: 10.0,),
                  Text("Lagos, Nigeria", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: sundayNiqab),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 110.0),
                child: Image.asset(MihiAppAssetsPath.edit),
              ),
            ], 
          ),
          SizedBox(height: 40.0,),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text("My feelings", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: mithril),),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(MihiAppAssetsPath.hug),
              Image.asset(MihiAppAssetsPath.hug2),
              Image.asset(MihiAppAssetsPath.hug3),
              Image.asset(MihiAppAssetsPath.hug4),
              Image.asset(MihiAppAssetsPath.hug5),
            ],
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text("Dashboard", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: mithril),),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(MihiAppAssetsPath.payment),
              ),
              SizedBox(width: 20.0,),
              Text("Payments", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: blackText),),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 180.0),
                child: Image.asset(MihiAppAssetsPath.leftArrow),
              ),
            ],
          ),
          SizedBox(height: 20.0,
          child: Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(MihiAppAssetsPath.notification2),
              ),
              SizedBox(width: 20.0,),
              Text("Notification", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: blackText),),
              SizedBox(width: 150,),
                Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Switch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ),
                          ),
            ],
          ),
          SizedBox(height: 20.0,
          child: Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(MihiAppAssetsPath.privacy),
              ),
              SizedBox(width: 20.0,),
              Text("Privacy", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: blackText),),
              GestureDetector(
                   onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>EditProfileScreen())
            );
          },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 200.0),
                  child: Image.asset(MihiAppAssetsPath.leftArrow),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0,),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text("My Account", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: mithril,),),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(right: 142.0),
            child: Text("Switch to other account", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Brilliant,),),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(right: 270.0),
            child: Text("Logout", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: redText,),),
          ),
        ],
       ),
       ),
    );
  }
}