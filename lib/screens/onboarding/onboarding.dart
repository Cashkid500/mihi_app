import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/signup/sigunup.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          SafeArea(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MihiAppAssetsPath.pageview1background),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [brilliant, spearfish],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  top: 100.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230.0,
                        child: Image.asset(MihiAppAssetsPath.pageview1image),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.cyan),
                    ),
                  ),
                ),
                
                // 30Days Box
                Positioned(
                  bottom: 40,
                  child: Container(
                    height: 289,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.cyan),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [whiteText, crowberryBlue],
                          stops: [0.53, 2.0],
                        ),
                      ),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  left: 45,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      MihiAppText.days,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whiteText,
                          fontSize: 30.0),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 130,
                  left: 45,
                  child: SizedBox(
                      width: 250,
                      child: Text(
                        MihiAppText.hundred,
                        style: TextStyle(
                            color: abyssopelagicWater,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                ),
                  Padding(
                      padding:
                      const EdgeInsets.only(top: 520.0, right: 20, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        MihiAppText.skip,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: abyssopelagicWater),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Container(
                          height: 45,
                          width: 75,
                          decoration: BoxDecoration(
                              color: whiteText,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            MihiAppText.next,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: blackText),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Onboarding Screen 2
          SafeArea(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MihiAppAssetsPath.pageview2background),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [brilliant, spearfish],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  top: 100.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230,
                        child: Image.asset(MihiAppAssetsPath.pageview2image),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.cyan),
                    ),
                  ),
                ),
                
                // Choose your top goal Box
                Positioned(
                  bottom: 40,
                  child: Container(
                    height: 289,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.cyan),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [whiteText, crowberryBlue],
                          stops: [0.53, 2.0],
                        ),
                        ),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  left: 45,
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      MihiAppText.choose,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whiteText,
                          fontSize: 30.0),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 130,
                  left: 45,
                  child: SizedBox(
                      width: 250,
                      child: Text(
                        MihiAppText.practice,
                        style: TextStyle(
                            color: abyssopelagicWater,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                      ),
                ),
                  Padding(
                      padding:
                      const EdgeInsets.only(top: 520.0, right: 20, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        MihiAppText.skip,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: abyssopelagicWater),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Container(
                          height: 45,
                          width: 75,
                          decoration: BoxDecoration(
                              color: whiteText,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            MihiAppText.next,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: blackText),
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => const SignupScreen())
            );
          },
          child: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MihiAppAssetsPath.pageview3background),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [brilliant, spearfish],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                Positioned(
                  top: 100.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230,
                        child: Image.asset(MihiAppAssetsPath.pageview3image),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.cyan),
                    ),
                  ),
                ),
                
                // Listen the calming music Box
                Positioned(
                  bottom: 70,
                  child: Container(
                    height: 289,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.cyan),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [whiteText, crowberryBlue],
                          stops: [0.53, 2.0],
                        ),
                        ),
                  ),
                ),
                Positioned(
                  bottom: 235,
                  left: 45,
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      MihiAppText.listen,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whiteText,
                          fontSize: 30.0),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 170,
                  left: 45,
                  child: SizedBox(
                      width: 250,
                      child: Text(
                        MihiAppText.hundredplus,
                        style: TextStyle(
                            color: abyssopelagicWater,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                ),
                   Padding(
          padding: const EdgeInsets.only(top: 470.0,right: 35, left: 5),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
              height: 45,
              width: 255,
              decoration: BoxDecoration(
                color: whiteText,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(MihiAppText.gs, 
                style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400, color: caribbeanSea
                  ),
                  ),
                  ),
                  ),
                ),
            ],
               ),
              ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}
