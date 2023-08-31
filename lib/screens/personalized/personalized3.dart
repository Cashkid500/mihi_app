import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/personalized/personalized4.dart';

class Personalized3Screen extends StatefulWidget {
  const Personalized3Screen({Key? key}) : super(key: key);

  @override
  State<Personalized3Screen> createState() => _Personalized3ScreenState();
}

class _Personalized3ScreenState extends State<Personalized3Screen> {
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
                  SizedBox(
                      height: 25.0,
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
                  SizedBox(
                      height: 38.0,
                      child: Image.asset(MihiAppAssetsPath.signupimage))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 340.0,
                height: 8.0,
                decoration: BoxDecoration(
                    color: orochimaru,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: orochimaru)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 325.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Color(0xff01809F),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                  child: Text(
                    MihiAppText.ninetyEight,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: sundayNiqab,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
              child: Container(
                width: 340.0,
                height: 600.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: caribbeanSea,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 10.0),
                      child: Text(MihiAppText.how,
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: sundayNiqab, height: 1.2),),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: caribbeanSea,),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, right: 6.0, left: 10.0),
                          child: Text(MihiAppText.based,
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                        ),
                        SizedBox(width: 1.0),
                        Image.asset(MihiAppAssetsPath.dropDown),
                        ],
                    ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(MihiAppText.select,
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril,),),
                        SizedBox(height: 2.0,),
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: worn_jade_tiles,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: caribbeanSea,),
                              ),
                          child: Row(
                            children: [
                              Padding(
                              padding: const EdgeInsets.only(right: 6.0, left: 15.0),
                              child: Text(MihiAppText.select2,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 30.0),
                              child: Image.asset(MihiAppAssetsPath.leftArrow),
                            ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: caribbeanSea,),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, right: 6.0, left: 10.0),
                          child: Text(MihiAppText.medical,
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                          child: Image.asset(MihiAppAssetsPath.leftArrow),
                        ),
                        ],
                    ),
                    ),
                    SizedBox(height: 30.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(MihiAppText.select,
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: mithril,),),
                        SizedBox(height: 2.0,),
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            color: worn_jade_tiles,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: caribbeanSea,),
                              ),
                          child: Row(
                            children: [
                              Padding(
                              padding: const EdgeInsets.only(top: 0.0, right: 6.0, left: 15.0),
                              child: Text(MihiAppText.select2,
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 30.0),
                              child: Image.asset(MihiAppAssetsPath.leftArrow),
                            ),
                            ],
                          ),
                        ),
                      ],
                    )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: GestureDetector(
                            onTap: () {
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) =>Personalized4Screen())
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
                                      MihiAppText.save,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: whiteText,),
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
                    )
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