import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/login/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
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
                MihiAppText.su,
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

            // Enter your full name here
            Text1(textPath: MihiAppText.fn),
            const SizedBox(
              height: 10.0,
            ),
            TextField1(
                hintTextPath: MihiAppText.eynh,
                prefixIconPath: MihiAppAssetsPath.signupprefix1),
            const SizedBox(
              height: 15.0,
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
                    builder: (BuildContext context) => const LoginScreen()));
              },
              child: Center(
                child: Container(
                  height: 54.0,
                  width: 329.0,
                  child: Center(
                      child: Text(
                    MihiAppText.jte,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFEEE0)),
                  ),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.bottomLeft,
                        colors: [Brilliant, crowberryBlue],
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const LoginScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: mithril,
                      ),
                      children: [
                        TextSpan(text: MihiAppText.already),
                        TextSpan(
                          text: MihiAppText.sign,
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

class Text1 extends StatelessWidget {
  const Text1({
    super.key,
    required this.textPath,
  });

  final String textPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(textPath,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: mithril)),
    );
  }
}

class PasswordField extends StatelessWidget {
  final bool passwordObscured;
  final Function() updateObscured;
  const PasswordField({
    super.key,
    required this.passwordObscured,
    required this.updateObscured,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          obscureText: passwordObscured,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            isCollapsed: true,
            hintText: MihiAppText.ep,
            hintStyle: TextStyle(
                color: mithril, fontSize: 14.0, fontWeight: FontWeight.w400),
            filled: true,
            fillColor: Color(0xffF2F2F2),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: mithril)),
            prefixIcon: Image.asset(MihiAppAssetsPath.signupprefix3),
            suffixIcon: IconButton(
              onPressed: updateObscured,
              icon: Icon(
                passwordObscured ? Icons.visibility_off : Icons.visibility,
                color: mithril,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    required this.hintTextPath,
    required this.prefixIconPath,
  });

  final String hintTextPath;
  final String prefixIconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            isCollapsed: true,
            hintText: hintTextPath,
            hintStyle: TextStyle(
                color: mithril, fontSize: 14.0, fontWeight: FontWeight.w400),
            filled: true,
            fillColor: bleachedSilk,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: mithril)),
            prefixIcon: Image.asset(prefixIconPath),
          ),
        ),
      ),
    );
  }
}
