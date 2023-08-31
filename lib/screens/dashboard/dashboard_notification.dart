import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard_search.dart';

class DashboardNotificationScreen extends StatefulWidget {
  const DashboardNotificationScreen({Key? key}) : super(key: key);

  @override
  State<DashboardNotificationScreen> createState() =>
      _DashboardNotificationScreenState();
}

class _DashboardNotificationScreenState
    extends State<DashboardNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MihiAppAssetsPath.image),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(MihiAppAssetsPath.topFlower),
                      Container(
                        height: 98.0,
                        width: 428.0,
                        color:
                            Color.fromARGB(255, 28, 197, 219).withOpacity(0.49),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            right: 110,
                          ),
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
                                ),
                              ),
                              Text(
                                "Notifications",
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
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Today",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, left: 25),
                          child: Text("Just now",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, left: 15),
                          child: Text("41 mins ago",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, left: 15),
                          child: Text("41 mins ago",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Yesterday",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0, left: 4),
                          child: Text(
                            "Tues, 12.06.22",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: blackText),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0, left: 4),
                          child: Text("Tues, 12.06.22",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DashboardSearchScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "This week",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0, left: 4),
                          child: Text("Tues, 12.06.22",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.woman),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(
                                    "Your next therapy session start soon")),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Soft Lullaby -  begins in 3:30Am - 4:30Am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Brilliant),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0, left: 4),
                          child: Text("Tues, 12.06.22",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: blackText)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
