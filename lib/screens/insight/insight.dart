import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/insight/single_player_music.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({Key? key}) : super(key: key);

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
   void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: whiteText,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52),
              topRight: Radius.circular(52),
            ),
          ),
          // Content of the bottom sheet
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MihiAppAssetsPath.queueMusic,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'My Playlist',
                      style: TextStyle(
                        color: blackText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 1
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MihiAppAssetsPath.share,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: blackText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MihiAppAssetsPath.favorite,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Favourite',
                      style: TextStyle(
                        color: blackText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MihiAppAssetsPath.addToPlaylist,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add to Playlist',
                      style: TextStyle(
                        color: blackText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MihiAppAssetsPath.download,
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(
                        color: blackText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Handle option 2
                  Navigator.pop(context);
                },
              ),
            ],
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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MihiAppAssetsPath.playlistBackground),
                    fit: BoxFit.cover),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 5),
                            child: Image.asset(MihiAppAssetsPath.backButton, height: 25,),
                          ),
                          Text(
                            'My Playlist',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: blackText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(Icons.more_vert),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Music List',
                        style: TextStyle(
                            color: blackText,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Text(
                            'Songs',
                            style: TextStyle(
                                color: blackText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Video',
                            style: TextStyle(
                                color: blackText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Playlist',
                            style: TextStyle(
                                color: blackText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Artists',
                            style: TextStyle(
                                color: blackText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Album',
                            style: TextStyle(
                                color: blackText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Container(
                        width: 350,
                        height: 1,
                        decoration: BoxDecoration(
                          color: orochimaru,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 1,
                              decoration: BoxDecoration(
                                color: caribbeanSea,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '1.',
                                ),
                              ),
                              Image.asset(MihiAppAssetsPath.cancer, height: 50,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Soft Lullaby',
                                  style: TextStyle(
                                      color: blackText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>SinglePlayerScreen())
                                  );
                                  },
                                  child: Text(
                                    '05:12',
                                    style: TextStyle(
                                      color: Brilliant,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: MihiAppAssetsPath.moreGrey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: mithril,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15,),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: 338,
                        child: Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: mithril,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '2.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer, height: 50,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Soft Lullaby',
                                  style: TextStyle(
                                      color: blackText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '05:12',
                                  style: TextStyle(
                                    color: Brilliant,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: MihiAppAssetsPath.moreGrey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: mithril,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: 338,
                        child: Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: mithril,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '3.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer, height: 50,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Soft Lullaby',
                                  style: TextStyle(
                                      color: blackText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '05:12',
                                  style: TextStyle(
                                    color: Brilliant,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: MihiAppAssetsPath.moreGrey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: mithril,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: 338,
                        child: Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: mithril,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '4.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer, height: 50,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Soft Lullaby',
                                  style: TextStyle(
                                      color: blackText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '05:12',
                                  style: TextStyle(
                                    color: Brilliant,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: MihiAppAssetsPath.moreGrey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: mithril,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 23,
                        width: 338,
                        child: Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: mithril,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '5.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer, height: 50,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                _showBottomSheet(context);
                                },
                                  child: Text(
                                    'Soft Lullaby',
                                    style: TextStyle(
                                        color: blackText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '05:12',
                                  style: TextStyle(
                                    color: Brilliant,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: MihiAppAssetsPath.moreGrey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: mithril,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
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