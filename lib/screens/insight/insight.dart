import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard.dart';
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
                      MihiAppText.myPlaylist,
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
                      MihiAppText.share,
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
                      MihiAppText.fav,
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
                      MihiAppText.atp,
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
                      MihiAppText.download,
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => const
                                        DashboardScreen()));
                              },
                              child: Image.asset(
                                MihiAppAssetsPath.backButton,
                                height: 25,
                              ),
                            ),
                          ),
                          Text(
                            MihiAppText.myPlaylist,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: blackText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                                onTap: () {
                                  _showBottomSheet(context);
                                },
                                child: MihiAppAssetsPath.more),
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
                        MihiAppText.ml,
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
                          RowWidget(rowTextPath: MihiAppText.songs),
                          SizedBox(
                            width: 30,
                          ),
                          RowWidget(rowTextPath: MihiAppText.videoText),
                          SizedBox(
                            width: 20,
                          ),
                          RowWidget(rowTextPath: MihiAppText.playlist),
                          SizedBox(
                            width: 30,
                          ),
                          RowWidget(rowTextPath: MihiAppText.artists),
                          SizedBox(
                            width: 20,
                          ),
                          RowWidget(rowTextPath: MihiAppText.album),
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
                    Playlist1(numberpath: MihiAppText.one),
                    Dividing(),
                    Playlist1(numberpath: MihiAppText.two),
                    Dividing(),
                    Playlist1(numberpath: MihiAppText.three),
                    Dividing(),
                    Playlist1(numberpath: MihiAppText.four),
                    Dividing(),
                    Playlist1(numberpath: MihiAppText.five),
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

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.rowTextPath,
  });

  final String rowTextPath;

  @override
  Widget build(BuildContext context) {
    return Text(
      rowTextPath,
      style: TextStyle(
          color: blackText,
          fontSize: 16,
          fontWeight: FontWeight.w400),
    );
  }
}

class Dividing extends StatelessWidget {
  const Dividing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 23,
        width: 338,
        child: Divider(
          height: 1.0,
          thickness: 1.0,
          color: mithril,
        ),
      ),
    );
  }
}

class Playlist1 extends StatelessWidget {
  const Playlist1({
    super.key,
    required this.numberpath,
  });

  final String numberpath;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  numberpath,
                ),
              ),
              Image.asset(
                MihiAppAssetsPath.cancer,
                height: 50,
              ),
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
                  MihiAppText.softLullaby,
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const
                            SinglePlayerScreen()));
                  },
                  child: Text(
                    MihiAppText.pastFive,
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
              MihiAppText.CA,
              style: TextStyle(
                  fontSize: 8, color: mithril, fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
