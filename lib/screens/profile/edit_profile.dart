import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/profile_settings.dart';

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
                                      image:
                                          AssetImage(MihiAppAssetsPath.upload))
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
                                      image:
                                          AssetImage(MihiAppAssetsPath.camera))
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
                            builder: (BuildContext context) => const
                                ProfileSettingsScreen()));
                      },
                      child: Image.asset(
                        MihiAppAssetsPath.backButton,
                        height: 25.0,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 100.0),
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

            // Profile Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage:
                          AssetImage(MihiAppAssetsPath.chrisAniedi),
                    ),
                    Positioned(
                      bottom: 8.0,
                      right: 5.0,
                      child: GestureDetector(
                          onTap: () {
                            _showBottomSheet(context);
                          },
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.teal,
                          )),
                    )
                  ],
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

            // Full Name
            TextWidget(textPath2: MihiAppText.fn),
            SizedBox(
              height: 5.0,
            ),
            TextField2(hintTextPath: MihiAppText.chrisAni, suffixIconPath: MihiAppAssetsPath.greenTick),
            SizedBox(
              height: 25.0,
            ),

            // Email Address
            TextWidget2(emailPath: MihiAppText.emailAdress),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 2.0,
            ),
            TextField2(
                hintTextPath: MihiAppText.mail,
                suffixIconPath: MihiAppAssetsPath.edit2),
            SizedBox(
              height: 25.0,
            ),

            // Phone Number
            TextWidget2(emailPath: MihiAppText.phoneNumber),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 2.0,
            ),
            TextField2(
                hintTextPath: MihiAppText.number,
                suffixIconPath: MihiAppAssetsPath.edit2),
            SizedBox(
              height: 25.0,
            ),

            // Address
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
            TextField2(
                hintTextPath: MihiAppText.lekki,
                suffixIconPath: MihiAppAssetsPath.edit2),
          ],
        ),
      ),
    );
  }
}

class TextField2 extends StatelessWidget {
  const TextField2({
    super.key,
    required this.hintTextPath,
    required this.suffixIconPath,
  });

  final String hintTextPath;
  final String suffixIconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            isCollapsed: true,
            hintText: hintTextPath,
            hintStyle: TextStyle(
                color: mithril,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            filled: true,
            fillColor: bleachedSilk,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: mithril)),
            suffixIcon: Image.asset(suffixIconPath),
          ),
        ),
      ),
    );
  }
}

class TextWidget2 extends StatelessWidget {
  const TextWidget2({
    super.key,
    required this.emailPath,
  });

  final String emailPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 225.0),
      child: Text(emailPath,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril)),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.textPath2,
  });

  final String textPath2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 255.0),
      child: Text(textPath2,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril)),
    );
  }
}
