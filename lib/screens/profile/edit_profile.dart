import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/profile/profile_settings.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  XFile? _selectedImage;

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
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) => const ProfileSettingsScreen(),),
                      );
                    },
                    child: Image.asset(MihiAppAssetsPath.backButton, height: 25.0,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 100.0),
                  child: Text(MihiAppText.editProfile, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 80.0),
                  child: Text(MihiAppText.update, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: spaceInvader,),),
                ),
              ],
            ),
            
            const SizedBox( height: 60.0,),
            
            // Profile Image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: _selectedImage == null
                          ? AssetImage(MihiAppAssetsPath.chrisAniedi)
                          : FileImage(File(_selectedImage!.path)) as ImageProvider,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return ProfileModalWidget(onImageSelected: (XFile image) {
                              setState(() {
                                _selectedImage = image;
                              });
                            });
                          },
                        );
                      },
                      child: const Icon(Icons.camera_alt, color: Colors.teal,),
                    ),
                  ],
                ),
                const SizedBox(width: 20.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Text(MihiAppText.chrisAni, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: sundayNiqab,),),
                    ),
                    const SizedBox(height: 10.0,),
                    Text( MihiAppText.lag, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40.0,),

            // Full Name
            TextWidget(textPath2: MihiAppText.fn),
            const SizedBox(height: 5.0,),
            TextField2(hintTextPath: MihiAppText.chrisAni, suffixIconPath: MihiAppAssetsPath.greenTick,),
            const SizedBox(height: 25.0,),
            // Email Address
            TextWidget2(emailPath: MihiAppText.emailAdress),
            const SizedBox(height: 12.0,),
            TextField2(hintTextPath: MihiAppText.mail, suffixIconPath: MihiAppAssetsPath.edit2,),
            const SizedBox(height: 25.0,),
            // Phone Number
            TextWidget2(emailPath: MihiAppText.phoneNumber),
            const SizedBox(height: 12.0,),
            TextField2(hintTextPath: MihiAppText.number, suffixIconPath: MihiAppAssetsPath.edit2,),
            const SizedBox(height: 25.0,),
            // Address
            Padding(
              padding: const EdgeInsets.only(right: 265.0),
              child: Text(MihiAppText.addy, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril,),),
            ),
            const SizedBox(height: 12.0,),
            TextField2(hintTextPath: MihiAppText.lekki, suffixIconPath: MihiAppAssetsPath.edit2,),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class ProfileModalWidget extends StatelessWidget {
  final void Function(XFile) onImageSelected;

  const ProfileModalWidget({
    super.key,
    required this.onImageSelected,
  });

  Future<void> _pickImage(ImageSource source, BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      onImageSelected(image);
      Navigator.pop(context); // Close the bottom sheet after selecting an image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //************* Upload from media ******/ 
          GestureDetector(
            onTap: () {
              _pickImage(ImageSource.gallery, context);
            },
            child: Row(
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
                      image: DecorationImage(image: AssetImage(MihiAppAssetsPath.upload),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: Text(MihiAppText.upload, style: TextStyle(color: blackText, fontWeight: FontWeight.w400, fontSize: 20,),),
                ),
              ],
            ),
          ),
          //******** Take a live photo ********/
          GestureDetector(
            onTap: () {
              _pickImage(ImageSource.camera, context);
            },
            child: Row(
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
                      image: DecorationImage(image: AssetImage(MihiAppAssetsPath.camera),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                  child: Text(MihiAppText.photo, style: TextStyle(color: blackText, fontWeight: FontWeight.w400, fontSize: 20,),),
                ),
              ],
            ),
          ),
        ],
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
      child: Text(emailPath, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril),),
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
      child: Text(textPath2, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril),),
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
            hintStyle: TextStyle(color: mithril, fontSize: 16.0, fontWeight: FontWeight.w400),
            filled: true,
            fillColor: bleachedSilk,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: mithril),),
            suffixIcon: Image.asset(suffixIconPath),
          ),
        ),
      ),
    );
  }
}