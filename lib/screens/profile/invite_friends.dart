import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/profile/invite_friends_share.dart';
import 'package:mihi_app/screens/profile/profile.dart';
import '../constants/text_constants.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
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
                    child: Image.asset(
                      MihiAppAssetsPath.backButton,
                      height: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 90.0),
                  child: Text(
                    MihiAppText.inviteFriend,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: mithril),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 100.0),
                  child: Image.asset(
                    MihiAppAssetsPath.chrisAniedi,
                    height: 30.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 80.0),
            Image.asset(MihiAppAssetsPath.chrisFriend),
            SizedBox(height: 30.0),
            Text(
              MihiAppText.invite2,
              style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                  color: blackText),
            ),
            SizedBox(height: 15.0),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  MihiAppText.loremIpsum5,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: mithril),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) =>InviteFriendShareScreen())
                        );
                        },
              child: Text(
                MihiAppText.referral,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: blackText),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 63,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: Brilliant),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MihiAppText.code,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          color: Brilliant),
                    ),
                    Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Brilliant,
                        ),
                        child: Center(
                          child: Text(
                            MihiAppText.copy,
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: whiteText),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Brilliant,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: Image(image: AssetImage(MihiAppAssetsPath.chain))
                        .image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
