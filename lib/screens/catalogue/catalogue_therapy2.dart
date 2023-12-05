import 'package:flutter/material.dart';
import 'package:mihi_app/screens/catalogue/catalogue_therapy.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';

class CatalogueTherapy2Screen extends StatefulWidget {
  const CatalogueTherapy2Screen({Key? key}) : super(key: key);

  @override
  State<CatalogueTherapy2Screen> createState() => _CatalogueTherapy2ScreenState();
}

class _CatalogueTherapy2ScreenState extends State<CatalogueTherapy2Screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MihiAppAssetsPath.amb3),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.85),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 30,
                              width: 31,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: whiteText),
                                  borderRadius: BorderRadius.circular(10)),
                              child: GestureDetector(
                                onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) => CatalogueTherapyScreen()));
                                  },
                                child: Image.asset(MihiAppAssetsPath.rightArrow2))),
                          Icon(Icons.favorite_border_outlined, color: whiteText,)
                        ],
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 50,
                      right: 50,
                      child: Column(
                        children: [
                          Container(
                            height: 199,
                            width: 215,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25), 
                              image: DecorationImage(
                                  image: AssetImage(MihiAppAssetsPath.ambience4),
                              )
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            MihiAppText.ambience,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: whiteText),
                          ),
                          Text(
                            MihiAppText.tenSongs,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: whiteText),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 370,
                      left: 45,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                MihiAppText.rating,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: whiteText),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    MihiAppText.fourPointTwo,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: whiteText),
                                  ),
                                  Image.asset(MihiAppAssetsPath.star2),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Column(
                            children: [
                              Text(
                                MihiAppText.language,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: whiteText),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                MihiAppText.english,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: whiteText),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Column(
                            children: [
                              Text(
                                MihiAppText.track,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: whiteText),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                MihiAppText.tenTracks,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: whiteText),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 170,
                      left: 30,
                      right: 50,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MihiAppText.overview,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                                width: 330,
                                child: Text(
                                  MihiAppText.longLorem,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 2.0,
                                      color: alpineGoat,
                                      ),
                                       textAlign: TextAlign.justify,
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: Container(
                        height: 140,
                        width: 342,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: blackText),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [whiteText, crowberryBlue2],
                            stops: [0.05, 2.0],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                MihiAppText.pl1,
                                style: TextStyle(
                                    color: whiteText,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                MihiAppText.london3,
                                style: TextStyle(
                                  color: whiteText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 174,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Brilliant,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: whiteText,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      MihiAppText.pastFive,
                                      style: TextStyle(
                                          color: whiteText,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      MihiAppText.pastFive,
                                      style: TextStyle(
                                          color: whiteText,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                  MihiAppAssetsPath.repeatWhite,
                                  MihiAppAssetsPath.previousWhite,
                                  MihiAppAssetsPath.pauseWhite,
                                  MihiAppAssetsPath.nextWhite,
                                  MihiAppAssetsPath.shuffleWhite,
                                ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

