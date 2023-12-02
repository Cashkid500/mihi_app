import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/personalized/personalized2.dart';

class PersonalizedScreen extends StatefulWidget {
  const PersonalizedScreen({Key? key}) : super(key: key);

  @override
  State<PersonalizedScreen> createState() => _PersonalizedScreenState();
}

class _PersonalizedScreenState extends State<PersonalizedScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.0, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.0,
                    child: Image.asset(MihiAppAssetsPath.humanLogo)),
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: Text(
                      MihiAppText.hello,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: sundayNiqab,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.0,
                    child: Image.asset(MihiAppAssetsPath.signupimage))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Image.asset(MihiAppAssetsPath.chrisImage),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: Center(child: Image.asset(MihiAppAssetsPath.groupPicture)),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(MihiAppAssetsPath.starSymbol),
                SizedBox(width: 5.0),
                Text(MihiAppText.trusted,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: sundayNiqab),),
              ],
            ),
            ),
            SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      height: 289,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.cyan),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [whiteText, crowberryBlue2],
                            stops: [0.53, 2.0],
                          )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                                child: Text(MihiAppText.would,
                                style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 20.0,
                                 color: sundayNiqab,
                                 height: 1.5,
                                ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                                  child: Text(MihiAppText.lorem2,
                                  style: TextStyle(
                                 fontWeight: FontWeight.w400,
                                 fontSize: 14.0,
                                 color: mithril,
                                ),),
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 15.0, left: 20),
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                        GestureDetector(
                                          onTap: () {
                                        Navigator.of(context).push(
                                        MaterialPageRoute(builder: (BuildContext context) => const Personalized2Screen())
                                        );
                                        },
                                          child: Container(
                                              height: 64.0,
                                              width: 155.0,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0),
                                                child: Text(
                                                MihiAppText.create,
                                                style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: whiteText),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Image.asset(MihiAppAssetsPath.arrowSymbol),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.bottomRight,
                                          colors: [Brilliant, crowberryBlue2],),
                                          borderRadius: BorderRadius.circular(10)),
                                                              ),
                                        ),
                                      SizedBox(width: 30.0),
                                      Container(
                                       height: 64,
                                        width: 103,
                                        decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 255, 254, 254),
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(color: caribbeanSea,style: BorderStyle.solid),
                                  ),
                                     child:Center(
                                      child: Text(MihiAppText.skip, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Brilliant),))
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
      ),
    );
  }
}
