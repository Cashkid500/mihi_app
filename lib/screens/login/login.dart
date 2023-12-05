import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/personalized/personalized.dart';
import 'package:mihi_app/screens/signup/sigunup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Container(
              child: Center(child: Image.asset(MihiAppAssetsPath.signupimage)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                MihiAppText.login,
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    color: sundayNiqab),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                MihiAppText.lorem,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: mithril),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),

            // Enter your email address
            Text1(textPath: MihiAppText.email),
            const SizedBox(
              height: 10.0,
            ),
            TextField1(
                hintTextPath: MihiAppText.eyeh,
                prefixIconPath: MihiAppAssetsPath.signupprefix2),
            const SizedBox(
              height: 15.0,
            ),

            // Enter your password
            Text1(textPath: MihiAppText.password),
            const SizedBox(
              height: 10.0,
            ),
            PasswordField(
              updateObscured: () {
                setState(() {
                  passwordObscured = !passwordObscured;
                });
              },
              passwordObscured: passwordObscured,
            ),
            const SizedBox(
              height: 60.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const PersonalizedScreen()));
              },
              child: Center(
                child: Container(
                  height: 54.0,
                  width: 329.0,
                  child: Center(
                      child: Text(
                    MihiAppText.cte,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: softCoral),
                  )),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.bottomLeft,
                        colors: [Brilliant, crowberryBlue2],
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const SignupScreen()));
                  },
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
            ),
          ],
        ),
      ),
    );
  }
}
