import 'package:flutter/material.dart';
import 'package:mihi_app/screens/catalogue/catalogue_therapy2.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';

class CatalogueTherapyScreen extends StatefulWidget {
  const CatalogueTherapyScreen({Key? key}) : super(key: key);

  @override
  State<CatalogueTherapyScreen> createState() => _CatalogueTherapyScreenState();
}

class _CatalogueTherapyScreenState extends State<CatalogueTherapyScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(MihiAppAssetsPath.flower),
                    Container(
                      height: 98.0,
                      width: 428.0,
                      color:
                          Color.fromARGB(255, 28, 197, 219).withOpacity(0.49),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 120),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 30.0,
                                width: 31.0,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: whiteText),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Image.asset(
                                  MihiAppAssetsPath.rightArrow2,
                                  height: 25,
                                )),
                            Text(
                              "Music Catalogue",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => CatalogueTherapy2Screen()));
                    },
                        child: Text(
                          "Therapy",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: blackText),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the",
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: mithril),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 190.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  MihiAppAssetsPath.ambiance),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                blackText.withOpacity(
                                    0.5), // Adjust opacity here (0.0 to 1.0)
                                BlendMode.srcOver,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ambience",
                                style: TextStyle(
                                    color: whiteText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '10 songs',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 190.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  MihiAppAssetsPath.nature),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                blackText.withOpacity(
                                    0.5), // Adjust opacity here (0.0 to 1.0)
                                BlendMode.srcOver,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Relax with Nature",
                                style: TextStyle(
                                    color: whiteText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '10 songs',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 190.0,
                            width: 155.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                    MihiAppAssetsPath.ambiance),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  blackText.withOpacity(
                                      0.5), // Adjust opacity here (0.0 to 1.0)
                                  BlendMode.srcOver,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ambience",
                                  style: TextStyle(
                                      color: whiteText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '10 songs',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: whiteText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 190.0,
                            width: 155.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                    MihiAppAssetsPath.nature),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(
                                      0.5), // Adjust opacity here (0.0 to 1.0)
                                  BlendMode.srcOver,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Relax with Nature",
                                  style: TextStyle(
                                      color: whiteText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '10 songs',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: whiteText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 190.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  MihiAppAssetsPath.ambiance),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(
                                    0.5), // Adjust opacity here (0.0 to 1.0)
                                BlendMode.srcOver,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ambience",
                                style: TextStyle(
                                    color: whiteText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '10 songs',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 190.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                  MihiAppAssetsPath.nature),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(
                                    0.5), // Adjust opacity here (0.0 to 1.0)
                                BlendMode.srcOver,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Relax with Nature",
                                style: TextStyle(
                                    color: whiteText,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '10 songs',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
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
