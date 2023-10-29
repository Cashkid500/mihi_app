import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/settings/privacy_settings.dart';
import '../constants/text_constants.dart';

class AboutSettingsScreen extends StatefulWidget {
  const AboutSettingsScreen({Key? key}) : super(key: key);
  
  @override
  State<AboutSettingsScreen> createState() => _AboutSettingsScreenState();
}

class _AboutSettingsScreenState extends State<AboutSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(223, 235, 232, 232),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => PrivacySettingsScreen()));
                        },
                        child: Image.asset(MihiAppAssetsPath.rightArrow)),
                      ),
                      Center(
                        child: Text(MihiAppText.about,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(MihiAppText.about,style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 137.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Brilliant
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 118.0,
                          child: Text(MihiAppText.lorem3b,
                          style: TextStyle(
                            color: whiteText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Container(
                            height: 80.0,
                            width: 2.0,
                            decoration: BoxDecoration(
                              color: whiteText
                            ),
                        ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(MihiAppText.counselling,style: 
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(MihiAppText.what,
              style: TextStyle(
                color: mithril,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.2,
              ),
              ),
              SizedBox(
                height: 20,
              ),
                  Text(MihiAppText.longLorem1,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Container(
                                width: 80.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(223, 235, 232, 232),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(MihiAppAssetsPath.starSymbol),
                                    Text(MihiAppText.rateUs,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                   ],
                                ),
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 44.0,
                          height: 44.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Brilliant
                           ),
                          child: 
                          Image.asset(MihiAppAssetsPath.message),
                        ),
                      ),
                    ],
                  )
                  ],
          ),
        ),
      ),
    );
  }
}