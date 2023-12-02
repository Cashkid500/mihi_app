import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard.dart';
import 'package:mihi_app/screens/dashboard/dashboard_searchresult.dart';
import '../constants/text_constants.dart';

class DashboardSearchScreen extends StatefulWidget {
  const DashboardSearchScreen({Key? key}) : super(key: key);

  @override
  State<DashboardSearchScreen> createState() => _DashboardSearchScreenState();
}

class _DashboardSearchScreenState extends State<DashboardSearchScreen> {
  List<String> items = [
    MihiAppText.mihiLullaby,
    MihiAppText.asake,
    MihiAppText.timing,
    MihiAppText.mihi,
    MihiAppText.violin,
  ];
  int current = 0;
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
                  fit: BoxFit.contain),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(MihiAppAssetsPath.topFlower2),
                      Container(
                        height: 240.0,
                        width: 428.0,
                        color:
                            Color.fromARGB(255, 28, 197, 219).withOpacity(0.49),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 135, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 30.0,
                                  width: 31.0,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: whiteText),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) => const DashboardScreen()));
                                    },
                                    child: Image.asset(
                                      MihiAppAssetsPath.rightArrow2,),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  MihiAppText.search,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: whiteText),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 85.0,
                        left: 25.0,
                        right: 25.0,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 15, left: 15),
                              isCollapsed: true,
                              hintText: MihiAppText.search,
                              hintStyle: TextStyle(
                                color: mithril,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: whiteText,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: whiteText,
                                ),
                              ),
                              prefixIcon: Image.asset(
                                MihiAppAssetsPath.search3,
                                color: mithril,
                              ),
                              suffixIcon: Image.asset(MihiAppAssetsPath.mic)),
                        ),
                      ),
                      Positioned(
                        top: 155,
                        left: 25,
                        child: Column(
                          children: [
                            Text(MihiAppText.recent,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 180),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 12,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: items.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          current = index;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 100),
                                        margin: EdgeInsets.all(5),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                21,
                                        decoration: BoxDecoration(
                                          color: current == index
                                              ? whiteText
                                              : Brilliant
                                                  .withOpacity(0.12),
                                          border: Border.all(
                                              color: icyLilac),
                                          borderRadius: current == index
                                              ? BorderRadius.circular(4)
                                              : BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            items[index],
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: current == index
                                                    ? Brilliant
                                                    : whiteText),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      MihiAppText.popular,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blackText),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(MihiAppAssetsPath.ambImage2),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    MihiAppText.asa,
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: Brilliant),
                                  ),
                                  Text(
                                    MihiAppText.anthem,
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic,
                                        color: blackText),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Image.asset(MihiAppAssetsPath.piano2),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(MihiAppText.asa,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Brilliant)),
                                  Text(MihiAppText.anthem,
                                      style: TextStyle(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                          color: blackText))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Image.asset(MihiAppAssetsPath.backTeraphy),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(MihiAppText.asa,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Brilliant)),
                                  Text(MihiAppText.anthem,
                                      style: TextStyle(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic,
                                          color: blackText))
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const DashboardSearchResultScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        MihiAppText.rec,
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blackText),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          MihiAppAssetsPath.happy,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(MihiAppText.softLullaby,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: blackText)),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              MihiAppText.lullaby,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: mithril),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 19,
                      width: MediaQuery.of(context).size.width / 1.17,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          MihiAppAssetsPath.singer,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MihiAppText.timeless,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: blackText),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              MihiAppText.timelessTime,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: mithril),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 19,
                      width: MediaQuery.of(context).size.width / 1.17,
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: mithril,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          MihiAppAssetsPath.pianist,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MihiAppText.ambiance,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: blackText),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              MihiAppText.ambianceTime,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: mithril),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
