import 'package:flutter/material.dart';
import 'package:mihi_app/screens/catalogue/catalogue_therapy.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';

import '../constants/text_constants.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
         child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height + 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                MihiAppAssetsPath.catalogueBackground), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  137, 102, 176, 123), // Make the container transparent
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Text(
                          MihiAppText.morning,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: whiteText),
                        ),
                      ),
                      SizedBox(
                        width: 85.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(MihiAppAssetsPath.search, height: 25,),
                            Image.asset(MihiAppAssetsPath.notification, height: 25,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          isCollapsed: true,
                          labelText: MihiAppText.sfc,
                          labelStyle: TextStyle(
                              color: mithril,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: bleachedSilk,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: mithril,
                            ),
                          ),
                          prefixIcon: Image.asset(MihiAppAssetsPath.search2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    MihiAppText.mc,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: whiteText),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteText),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(MihiAppAssetsPath.catalogueBaby),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 105.0),
                              child: Text(
                                MihiAppText.mt,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                MihiAppText.loremIpsum,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: mithril,
                                ),
                              ),
                            )
                          ],
                        ),
                        Image.asset(MihiAppAssetsPath.leftArrow),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteText),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(MihiAppAssetsPath.catalogueBaby),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 105.0),
                              child: Text(
                                MihiAppText.mt,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                MihiAppText.loremIpsum,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: mithril,
                                ),
                              ),
                            )
                          ],
                        ),
                        Image.asset(MihiAppAssetsPath.leftArrow),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteText),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(MihiAppAssetsPath.catalogueBaby),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 142.0),
                              child: Text(
                                MihiAppText.lofi,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Text(
                                MihiAppText.loremIpsum,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400,
                                  color: mithril,
                                ),
                              ),
                            )
                          ],
                        ),
                        Image.asset(MihiAppAssetsPath.leftArrow),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => CatalogueTherapyScreen()));
                    },
                    child: Text(
                      MihiAppText.trend,
                      style: TextStyle(
                        color: whiteText,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 155.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage(MihiAppAssetsPath.ambience4),
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10.0
                              ),
                              child: Container(
                                width: 155.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Color.fromARGB(119, 0, 0, 0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        MihiAppText.softLullaby,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: whiteText,
                                        ),
                                      ),
                                      Text(
                                        MihiAppText.london,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 155.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage(MihiAppAssetsPath.catalogueSong2),
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom:10.0),
                              child: Container(
                                width: 155.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Color.fromARGB(119, 0, 0, 0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        MihiAppText.softLullaby,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: whiteText,
                                        ),
                                      ),
                                      Text(
                                        MihiAppText.london,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 155.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                          image:
                              AssetImage(MihiAppAssetsPath.ambience4),
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10.0
                              ),
                              child: Container(
                                width: 155.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Color.fromARGB(119, 0, 0, 0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        MihiAppText.softLullaby,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: whiteText,
                                        ),
                                      ),
                                      Text(
                                        MihiAppText.london,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 155.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                          image:
                              AssetImage(MihiAppAssetsPath.catalogueSong2),
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom:10.0),
                              child: Container(
                                width: 155.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Color.fromARGB(119, 0, 0, 0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        MihiAppText.softLullaby,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: whiteText,
                                        ),
                                      ),
                                      Text(
                                        MihiAppText.london,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
      ),
    );
  }
}