import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/insight/featured_playlist.dart';
import 'package:mihi_app/screens/personalized/personalized.dart';

class PlayerPlaylistScreen extends StatefulWidget {
  const PlayerPlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlayerPlaylistScreen> createState() => _PlayerPlaylistScreenState();
}

class _PlayerPlaylistScreenState extends State<PlayerPlaylistScreen> {
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
                    image: AssetImage(MihiAppAssetsPath.playerPlaylist),
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
                            child: Image.asset(
                              MihiAppAssetsPath.backButton,
                              height: 25,
                            ),
                          ),
                          Text(
                            'My Playlist',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: mithril,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: MihiAppAssetsPath.more,
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
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                                  child:
                                      Image.asset(MihiAppAssetsPath.pianos)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                                  '6.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                                  '7.',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
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
                        height: MediaQuery.of(context).size.height / 20,
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
                                  '8.',
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
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
                              height: 10,
                            ),
                            Text(
                              'Christopher Amedi',
                              style: TextStyle(
                                  fontSize: 8,
                                  color: blackText,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: 338,
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
            Positioned(
              bottom: 0.5,
              child: Container(
                height: 122,
                width: 365,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(1.0),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.cyan),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: [
                      detectiveCoat,
                      crowberryBlue2,
                    ],
                    stops: [0.05, 2.0],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Image.asset(MihiAppAssetsPath.softLullaby),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Soft Lullaby',
                            style: TextStyle(
                              color: blackText,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Asa Asake - London Live Tour Album",
                            style: TextStyle(
                              color: mithril,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                       onTap: () {
                       Navigator.of(context).push(
                       MaterialPageRoute(builder: (BuildContext context) =>FeaturedPlaylistScreen())
                       );
                      },
                      child: Image.asset(
                        MihiAppAssetsPath.playButton,
                        height: 50,
                      ),
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