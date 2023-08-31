import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';

class DashboardSearchResultScreen extends StatefulWidget {
  const DashboardSearchResultScreen({Key? key}) : super(key: key);

  @override
  State<DashboardSearchResultScreen> createState() =>
      _DashboardSearchResultScreenState();
}

class _DashboardSearchResultScreenState
    extends State<DashboardSearchResultScreen> {
  List<String> items = [
    'All',
    'Music',
    'Video',
    'Playlist',
    'Artists',
    'Releases',
  ];
  int current = 0;
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 700,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(MihiAppAssetsPath.happy),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Soft Lullaby",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: blackText)),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "SOFT LULLABY 12:00 AM - 12:00 AM",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: mithril),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 19,
                              width: MediaQuery.of(context).size.width / 1.17,
                              child: Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: mithril,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        MihiAppAssetsPath.share,
                        SizedBox(
                          width: 15,
                        ),
                        Text("Share", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 2
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        MihiAppAssetsPath.favorite,
                        SizedBox(
                          width: 15,
                        ),
                        Text("Favourite", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 3
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        MihiAppAssetsPath.addToPlaylist,
                        SizedBox(
                          width: 15,
                        ),
                        Text("Add to Playlist", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 4
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        MihiAppAssetsPath.comment,
                        SizedBox(
                          width: 15,
                        ),
                        Text("Comment", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 5
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        MihiAppAssetsPath.download,
                        SizedBox(
                          width: 15,
                        ),
                        Text("Download", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 6
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Image.asset(MihiAppAssetsPath.playNext),
                        SizedBox(
                          width: 23,
                        ),
                        Text("Play Next", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handle option 2
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                  image:
                      AssetImage(MihiAppAssetsPath.searchResultBackground),
                  fit: BoxFit.cover),
            ),
            child: Container(
              height: size.height,
              width: size.width,
              color: whiteText.withOpacity(0.60),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(MihiAppAssetsPath.image2),
                        Container(
                          height: 136.0,
                          width: 428.0,
                          color: Color.fromARGB(255, 28, 197, 219)
                              .withOpacity(0.49),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25.0, right: 150, bottom: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25.0),
                                  child: Container(
                                    height: 30.0,
                                    width: 31.0,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: whiteText),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset(
                                      MihiAppAssetsPath.rightArrow2,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20.0,
                          left: 75.0,
                          right: 15.0,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 10, left: 20),
                                isCollapsed: true,
                                labelText: "Lullaby Music",
                                labelStyle: TextStyle(
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
                                suffixIcon: Icon(Icons.close)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 80),
                          child: SizedBox(
                            height: 50.0,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 20),
                      child: Text("Releases",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: blackText)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 110.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: bleachedSilk.withOpacity(0.4),
                                border: Border.all(
                                  color: crowberryBlue2.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.0,
                                ),
                                Image.asset(MihiAppAssetsPath.happy),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Soft Lullaby",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Asa Asake",
                                  style: TextStyle(
                                      fontSize: 6, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 110.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: bleachedSilk.withOpacity(0.4),
                                border: Border.all(
                                  color: crowberryBlue2.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.0,
                                ),
                                Image.asset(MihiAppAssetsPath.happy),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Soft Lullaby",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text("Asa Asake",
                                    style: TextStyle(
                                        fontSize: 6,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                          Container(
                            height: 110.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                color: bleachedSilk.withOpacity(0.4),
                                border: Border.all(
                                  color: crowberryBlue2.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.0,
                                ),
                                Image.asset(MihiAppAssetsPath.happy),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Soft Lullaby",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Asa Asake",
                                  style: TextStyle(
                                      fontSize: 6, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Songs",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                 onTap: () {
                                _showBottomSheet(context);
                                },
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child:
                                    Image.asset(MihiAppAssetsPath.leftArrow),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Image.asset(MihiAppAssetsPath.happy),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Soft Lullaby",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blackText)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "SOFT LULLABY 12:00 AM - 12:00 AM",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: mithril),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90.0),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_circle_down),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Icon(Icons.more_vert),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 19,
                        width: MediaQuery.of(context).size.width / 1.13,
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
                          Image.asset(MihiAppAssetsPath.singer),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Timeless",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blackText)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Timeless 12:00 AM - 12:00 AM",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: mithril),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 112.0),
                            child: Row(
                              children: [
                                MihiAppAssetsPath.checkCircleOutline,
                                SizedBox(
                                  width: 2.0,
                                ),
                                MihiAppAssetsPath.more,
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 19,
                        width: MediaQuery.of(context).size.width / 1.13,
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
                          Image.asset(MihiAppAssetsPath.pianist),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ambiance",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blackText)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Ambiance 12:00 AM - 12:00 AM",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: mithril),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110.0),
                            child: Row(
                              children: [
                                MihiAppAssetsPath.arrowCircleDown,
                                SizedBox(
                                  width: 2.0,
                                ),
                                MihiAppAssetsPath.more,
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Center(
                      child: Image.asset(MihiAppAssetsPath.dots),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Artists",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: blackText),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: blackText),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child:
                                    Image.asset(MihiAppAssetsPath.leftArrow),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset(MihiAppAssetsPath.pianist),
                                Text(
                                  "Ambience",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: blackText),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Image.asset(MihiAppAssetsPath.pianist),
                                Text(
                                  "Ambience",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: blackText),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Image.asset(MihiAppAssetsPath.pianist),
                                Text(
                                  "Ambience",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: blackText),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Image.asset(MihiAppAssetsPath.pianist),
                                Text("Ambience",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: blackText)),
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Image.asset(MihiAppAssetsPath.pianist),
                                Text("Ambience",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: blackText)),
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
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}