import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/onboarding/onboarding.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(), // Use SplashScreen as the initial screen
        );
      }
  }


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingScreen()), // Replace NextScreen with the screen you want to navigate to
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  Container(
                    height: 550,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(MihiAppAssetsPath.mihiappbackground),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.cyan),
                ),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(1),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.cyan),
                  ),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(MihiAppAssetsPath.mihiapplogo),
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, bottom: 30),
                          child: Text(
                            "     Music For Mental Health.\n Comfort. Relaxation. Healing",
                            style:
                                TextStyle(color: whiteText, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Image.asset(MihiAppAssetsPath.mussymbol),
                        ),
                      ],
                    ),
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
