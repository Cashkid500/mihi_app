import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/settings/privacy_settings.dart';
import '../constants/text_constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 60, right: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 138.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              MihiAppAssetsPath.groups,
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              MihiAppText.hello,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 20.0,
                              height: 20.0,
                              child: Image.asset(MihiAppAssetsPath.search2)),
                          Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(color: caribbeanSea),
                            child:
                                Image.asset(MihiAppAssetsPath.notification),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 650.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: whiteText,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),

                      // Account
                      Text(
                        MihiAppText.account,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(MihiAppAssetsPath.christopher),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50.0),
                                  child: Text(
                                    MihiAppText.CA,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 65.0),
                                  child: Text(
                                    MihiAppText.PI,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: mithril,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(223, 235, 232, 232),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  // Image.asset(MihiAppAssetsPath.leftArrow),
                                  Icon(Icons.arrow_forward_ios, color: mithril, size: 15,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),

                      // Settings
                      Text(
                        MihiAppText.settings,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: shyMoment),
                            child: Image.asset(MihiAppAssetsPath.about),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 55.0),
                            child: Text(
                              MihiAppText.about,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(223, 235, 232, 232),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: 
                            // Image.asset(MihiAppAssetsPath.leftArrow),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: mithril,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: BorageBlue),
                            child: Image.asset(MihiAppAssetsPath.push),
                          ),
                          Text(
                            MihiAppText.push,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "on",
                            style: TextStyle(
                                fontSize: 14, color: mithril),
                          ),
                          Container(
                            width: 40.0,
                            height: 20.0,
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
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: cleanPool),
                            child: Image.asset(MihiAppAssetsPath.privacy2),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PrivacySettingsScreen()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 100.0),
                              child: Text(
                                MihiAppText.pp,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(223, 235, 232, 232),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: 
                            // Image.asset(MihiAppAssetsPath.leftArrow),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: mithril,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: jocose_jade),
                            child: Image.asset(MihiAppAssetsPath.activity),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 90.0),
                            child: Text(
                              MihiAppText.activity,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(223, 235, 232, 232),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  // Image.asset(MihiAppAssetsPath.leftArrow),
                                  Icon(
                              Icons.arrow_forward_ios,
                              color: mithril,
                              size: 15,
                            ),
                                  ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
