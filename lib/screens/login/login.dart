import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/personalized/personalized.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.0,
            ),
            Container(
              child: Center(child: Image.asset(MihiAppAssetsPath.signupimage)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                MihiAppText.login,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500, color: sundayNiqab),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                MihiAppText.lorem,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(MihiAppText.email,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril)),
            ),
           SizedBox(
            height: 10.0,
           ),
          SizedBox(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              isCollapsed: true,
              labelText: MihiAppText.eyeh,
              labelStyle: TextStyle(
                  color: mithril,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400),
              filled: true,
              fillColor: bleachedSilk,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: mithril)),
              prefixIcon: Image.asset(MihiAppAssetsPath.signupprefix2),),
        ),
      ),
    ),
           SizedBox(
            height: 15.0,
           ),
           Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(MihiAppText.password,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril)),
            ),
            SizedBox(
              height: 10.0,
            ), 
        SizedBox(
      width: 340,
      child: Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: TextField(
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          isCollapsed: true,
          labelText: MihiAppText.ep,
          labelStyle: TextStyle(
              color: mithril,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: bleachedSilk,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: mithril)),
          prefixIcon: Image.asset(MihiAppAssetsPath.signupprefix3),
          suffixIcon: Image.asset(MihiAppAssetsPath.signupsuffix1),),
    ),
      ),
    ),
        SizedBox(
          height: 60.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>PersonalizedScreen())
            );
          },
          child: Center(
            child: Container(
              height: 54.0,
              width: 329.0,
              child: Center(
                child: Text(MihiAppText.cte, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: softCoral),)),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.bottomLeft,
                  colors: [Brilliant, crowberryBlue2],
                ),
               borderRadius: BorderRadius.circular(10) 
              ),
            ),
          ),
        ),
      SizedBox(
        height: 250,
        child: Center(
          child: RichText(
            text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: mithril,
                      ),
                      children: [
                        TextSpan(text: MihiAppText.dont),
                        TextSpan(
                          text: MihiAppText.register,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: greenToneInk,
                          ),
                        ),
                      ],
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
