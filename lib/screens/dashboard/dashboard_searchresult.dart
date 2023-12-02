import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard_search.dart';
import '../constants/text_constants.dart';

class DashboardSearchResultScreen extends StatefulWidget {
  const DashboardSearchResultScreen({Key? key}) : super(key: key);

  @override
  State<DashboardSearchResultScreen> createState() =>
      _DashboardSearchResultScreenState();
}

class _DashboardSearchResultScreenState
    extends State<DashboardSearchResultScreen> {
  List<String> items = [
    MihiAppText.all,
    MihiAppText.musicText,
    MihiAppText.videoText,
    MihiAppText.playlist,
    MihiAppText.artists,
    MihiAppText.releases,
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
                        Text(MihiAppText.share, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                        Text(MihiAppText.fav, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                        Text(MihiAppText.atp, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                        Text(MihiAppText.comment, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                        Text(MihiAppText.download, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                        Text(MihiAppText.pn, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: blackText),)
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
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) => const DashboardSearchScreen()));
                                      },
                                      child: Image.asset(
                                        MihiAppAssetsPath.rightArrow2,),
                                    ),
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
                                    EdgeInsets.only(top: 15, left: 20),
                                isCollapsed: true,
                                hintText: MihiAppText.lullabyMusic,
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
                                suffixIcon: GestureDetector(
                                onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) => const
                                                  DashboardSearchResultScreen()));
                                    },
                                child: Icon(Icons.close))),
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
                      child: Text(MihiAppText.releases,
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
                          Container1(),
                          Container1(),
                          Container1(),
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
                            MihiAppText.songs,
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
                                  MihiAppText.more,
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
                              Text(MihiAppText.timeless,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blackText)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                MihiAppText.timelessTime,
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
                              Text(MihiAppText.ambiance,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: blackText)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                MihiAppText.ambianceTime,
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
                            MihiAppText.artists,
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
                                  MihiAppText.more,
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
                            BottomImage(),
                            SizedBox(width: 20.0,),
                            BottomImage(),
                            SizedBox(width: 20.0,),
                            BottomImage(),
                            SizedBox(width: 20.0,),
                            BottomImage(),
                            SizedBox(width: 20.0,),
                            BottomImage(),
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

class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MihiAppAssetsPath.pianist),
        Text(
          MihiAppText.ambience,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: blackText),
        )
      ],
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            MihiAppText.softLullaby,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
          Text(
            MihiAppText.asake,
            style: TextStyle(
                fontSize: 6, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
