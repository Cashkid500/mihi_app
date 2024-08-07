import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/invite_friends.dart';

class InviteFriendShareScreen extends StatefulWidget {
  const InviteFriendShareScreen({Key? key}) : super(key: key);

  @override
  State<InviteFriendShareScreen> createState() => _InviteFriendShareScreenState();
}

class _InviteFriendShareScreenState extends State<InviteFriendShareScreen> {
    
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
                          builder: (BuildContext context) => const InviteFriendsScreen()));
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
            const SizedBox(height: 80.0),
            Image.asset(MihiAppAssetsPath.chrisFriend),
            const SizedBox(height: 154.0),
            Text(
              MihiAppText.referral,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: blackText),
            ),
            const SizedBox(height: 20.0),
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
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return InviteFriendsModalWidget();
                  },
                );
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}

class InviteFriendsModalWidget extends StatelessWidget {
  const InviteFriendsModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      
      // Content of the bottom sheet
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: icyLilac,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: Image(
                                  image:
                                      AssetImage(MihiAppAssetsPath.gmail))
                              .image),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 180.0, top: 20.0),
                      child: Text(
                        MihiAppText.gmail,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: blackText),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      MihiAppText.attach,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: mithril),
                    ),
                  ],
                ),
                const SizedBox(width: 20.0),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(MihiAppAssetsPath.leftArrow),
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: icyLilac,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: Image(
                                  image: AssetImage(
                                      MihiAppAssetsPath.whatsApp))
                              .image),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 150.0, top: 20.0),
                      child: Text(
                        MihiAppText.WhatsApp,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: blackText),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      MihiAppText.attach,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: mithril),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(MihiAppAssetsPath.leftArrow),
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: icyLilac,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: Image(
                                  image: AssetImage(
                                      MihiAppAssetsPath.contact))
                              .image),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 150.0, top: 20.0),
                      child: Text(
                        MihiAppText.contact,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: blackText),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      MihiAppText.attach,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: mithril),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(MihiAppAssetsPath.leftArrow),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
