import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/profile/profile_settings.dart';
import '../constants/text_constants.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
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
            children: <Widget>[
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Brilliant,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: Image(
                                      image: AssetImage(
                                          MihiAppAssetsPath.upload))
                                  .image),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                      child: Text(
                        MihiAppText.upload,
                        style: TextStyle(
                            color: blackText,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 1
                  // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Brilliant,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: Image(
                                      image: AssetImage(
                                          MihiAppAssetsPath.camera))
                                  .image),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                      child: Text(
                        MihiAppText.photo,
                        style: TextStyle(
                            color: blackText,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

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
                            builder: (BuildContext context) => ProfileSettingsScreen()));
                      },
                  child: Image.asset(MihiAppAssetsPath.backButton, height: 25.0,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 90.0),
                  child: Text(
                    MihiAppText.editProfile,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: mithril),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 80.0),
                  child: Text(
                    MihiAppText.update,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: spaceInvader),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset(
                      MihiAppAssetsPath.chrisAniedi,
                      height: 80.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Text(
                        MihiAppText.chrisAni,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: sundayNiqab),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      MihiAppText.lag,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: sundayNiqab),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255.0),
              child: Text(MihiAppText.fn,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: mithril)),
            ),
            SizedBox(
              height: 5.0,
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
                    labelText: MihiAppText.chrisAni,
                    labelStyle: TextStyle(
                        color: mithril,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: bleachedSilk,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                    suffixIcon: Image.asset(MihiAppAssetsPath.greenTick),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 225.0),
              child: Text(MihiAppText.emailAdress,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: mithril)),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 2.0,
            ),
            SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                ),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    isCollapsed: true,
                    labelText: MihiAppText.mail,
                    labelStyle: TextStyle(
                        color: mithril,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Color(0xffF2F2F2),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                    suffixIcon: Image.asset(MihiAppAssetsPath.edit2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 225.0),
              child: Text(MihiAppText.phoneNumber,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: mithril)),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 2.0,
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
                    labelText: MihiAppText.number,
                    labelStyle: TextStyle(
                        color: mithril,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: bleachedSilk,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                    suffixIcon: Image.asset(MihiAppAssetsPath.edit2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 265.0),
              child: Text(MihiAppText.addy,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: mithril)),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 2.0,
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
                    labelText: MihiAppText.lekki,
                    labelStyle: TextStyle(
                        color: mithril,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: bleachedSilk,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: mithril)),
                    suffixIcon: Image.asset(MihiAppAssetsPath.edit2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
