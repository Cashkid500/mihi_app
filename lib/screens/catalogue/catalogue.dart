import 'package:flutter/material.dart';
import 'package:mihi_app/screens/catalogue/catalogue_therapy.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard_notification.dart';
import 'package:mihi_app/screens/dashboard/dashboard_search.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(
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
                            GestureDetector(
                            onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) => const
                                                DashboardSearchScreen()));
                                  },
                            child: Image.asset(MihiAppAssetsPath.search, height: 25,)),
                            GestureDetector(
                            onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) => const
                                                DashboardNotificationScreen()));
                                  },
                            child: Image.asset(MihiAppAssetsPath.notification, height: 25,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
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
                          hintText: MihiAppText.sfc,
                          hintStyle: TextStyle(
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    MihiAppText.mc,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: whiteText),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FirstContainer(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FirstContainer(),
                  const SizedBox(
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
                  const SizedBox(
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
                  const SizedBox(
                    height: 3.0,
                  ),
                  FirstRow(),
                  const SizedBox(height: 5.0),
                  FirstRow(),
                ],
              ),
            )),
      ),
      ),
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        const SizedBox(
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
                        const SizedBox(
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
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}