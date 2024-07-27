import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/profile_sessions2.dart';

class ProfileSessions3Screen extends StatefulWidget {
  const ProfileSessions3Screen({Key? key}) : super(key: key);

  @override
  State<ProfileSessions3Screen> createState() => _ProfileSessions3ScreenState();
}

class _ProfileSessions3ScreenState extends State<ProfileSessions3Screen> {
  @override
  Widget build(BuildContext context) {
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
                          builder: (BuildContext context) => const
                              ProfileSessions2Screen()));
                    },
                    child: Image.asset(
                      MihiAppAssetsPath.backButton,
                      height: 25,
                    ),
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
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                MihiAppText.title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: mithril),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isCollapsed: true,
                    labelText: MihiAppText.lookup,
                    labelStyle: TextStyle(
                        color: jet,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: bleachedSilk,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                MihiAppText.date,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: mithril),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isCollapsed: true,
                    labelText: MihiAppText.thursday,
                    labelStyle: TextStyle(
                        color: jet,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: bleachedSilk,
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                    suffixIcon: MihiAppAssetsPath.date,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290.0),
              child: Text(
                MihiAppText.time,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: mithril),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Container(
                    height: 55,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Brilliant,
                    ),
                    child: Center(
                        child: Text(
                      MihiAppText.eleven                         ,
                      style: TextStyle(
                          color: whiteText,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    MihiAppText.twelve,
                    style: TextStyle(
                        color: blackText,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Container(
                    height: 55,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bleachedSilk,
                      border: Border.all(color: mithril),
                    ),
                    child: Center(
                        child: Text(
                      MihiAppText.thirteen,
                      style: TextStyle(
                          color: mithril,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    MihiAppText.fourteen,
                    style: TextStyle(
                        color: blackText,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 65.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    MihiAppText.fifteen,
                    style: TextStyle(
                        color: mithril,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                  Container(
                      height: 55,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: bleachedSilk,
                        border: Border.all(color: mithril),
                      ),
                      child: Center(
                          child: Text(
                        MihiAppText.sixteen,
                        style: TextStyle(
                            color: mithril,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Container(
              height: 55,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Brilliant,
              ),
              child: Center(
                  child: Text(
                MihiAppText.addSession,
                style: TextStyle(
                    color: softCoral,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
