import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/profile_sessions.dart';
import 'package:mihi_app/screens/profile/profile_sessions3.dart';

class ProfileSessions2Screen extends StatefulWidget {
  const ProfileSessions2Screen({Key? key}) : super(key: key);

  @override
  State<ProfileSessions2Screen> createState() => _ProfileSessions2ScreenState();
}

class _ProfileSessions2ScreenState extends State<ProfileSessions2Screen> {
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
                          builder: (BuildContext context) => const ProfileSessionsScreen()));
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
              padding: const EdgeInsets.only(right: 210.0),
              child: Text(
                MihiAppText.allSchedule,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: blackText),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container1(),
            const SizedBox(height: 20.0),
            Container2(),
            const SizedBox(height: 20.0),
            Container1(),
            const SizedBox(height: 20.0),
            Container2(),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => const ProfileSessions3Screen())
              );
              },
              child: Container1(),
            ),
          ],
        ),
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(width: 5.0),
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
              const SizedBox(
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
          const SizedBox(
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
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(width: 5.0),
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
              const SizedBox(
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
          const SizedBox(
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
    );
  }
}
