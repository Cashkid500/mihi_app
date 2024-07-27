import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/personalized/personalized3.dart';

class Personalized2Screen extends StatefulWidget {
  const Personalized2Screen({Key? key}) : super(key: key);

  @override
  State<Personalized2Screen> createState() => _Personalized2ScreenState();
}

class _Personalized2ScreenState extends State<Personalized2Screen> {
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
                      child: Image.asset(MihiAppAssetsPath.humanLogo),
                    ),
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
                      child: Image.asset(MihiAppAssetsPath.signupimage),
                      )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
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
                      width: 175.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: caribbeanSea,
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
                    MihiAppText.fifty,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: sundayNiqab,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
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
                    const SizedBox(height: 20.0),
                    Container(
                      width: 300,
                      // height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: caribbeanSea,),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, right: 24.0, left: 4.0),
                          child: Text(MihiAppText.based,
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 20.0),
                          child: Text(MihiAppText.lorem3,
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: mithril, height: 1.3),),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          width: 300,
                          height: 54,
                          decoration: BoxDecoration(
                            color: worn_jade_tiles,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                            border: Border.all(
                              color: bleachedSilk,),
                          ),
                          child: Center(
                            child: Text(MihiAppText.recommended,
                            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                          ),
                        )
                        ],
                    ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      width: 300,
                      // height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: caribbeanSea,),
                          ),
                      child: Column(
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(top: 25.0, right: 44.0,),
                          child: Text(MihiAppText.medical,
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 20.0),
                          child: Text(MihiAppText.lorem3,
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: mithril, height: 1.3),),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          width: 300,
                          height: 54,
                          decoration: BoxDecoration(
                            color: worn_jade_tiles,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                            border: Border.all(
                              color: bleachedSilk,),
                          ),
                          child: Center(
                            child: Text(MihiAppText.recommended,
                            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: sundayNiqab,),),
                          ),
                        )
                        ],
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: GestureDetector(
                            onTap: () {
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) => const Personalized3Screen())
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
                                      MihiAppText.proceed,
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
                          ),
                         const SizedBox(width: 30.0),
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