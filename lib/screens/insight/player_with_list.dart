import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';

class PlayerWithPlaylistScreen extends StatefulWidget {
  const PlayerWithPlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlayerWithPlaylistScreen> createState() => _PlayerWithPlaylistScreenState();
}

class _PlayerWithPlaylistScreenState extends State<PlayerWithPlaylistScreen> {
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
                  // Handles Option 2
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
                  // Handles Option 3
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
                  // Handles Option 4
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
                  // Handles Option 5
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height + 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        MihiAppAssetsPath.playerWithListBackground),
                    fit: BoxFit.cover),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueGrey.withOpacity(0.45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(MihiAppAssetsPath.backButton, height: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Listening to',
                            style: TextStyle(
                              color: blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: MihiAppAssetsPath.more,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(MihiAppAssetsPath.happy2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Playlist 1',
                        style: TextStyle(
                          color: blackText,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        'Asa Asake London Live',
                        style: TextStyle(
                          color: mithril,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: whiteText,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "1.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Music for you',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: GestureDetector(
                                              onTap: () {
                                              _showBottomSheet(context);
                                              },
                                              child: MihiAppAssetsPath.moreGrey,
                                          ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration:
                                    BoxDecoration(color: mithril),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "2.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Sea Side Cafe',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: MihiAppAssetsPath.moreGrey,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration:
                                    BoxDecoration(color: mithril),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "3.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Sea Side Cafe',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: MihiAppAssetsPath.moreGrey,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration:
                                    BoxDecoration(color: mithril),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "4.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Music for you',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: MihiAppAssetsPath.moreGrey,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration:
                                    BoxDecoration(color: mithril),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "5.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Music for you',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: MihiAppAssetsPath.moreGrey,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration:
                                    BoxDecoration(color: mithril),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "6.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Image.asset(MihiAppAssetsPath.cancer),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Music for you',
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
                                            width: 130,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: MihiAppAssetsPath.moreGrey,
                                          )
                                        ],
                                      ),
                                      Text(
                                        'Christopher Amedi',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ), 
                            ],
                          ),
                        ),
                        Container(
                          height: 169,
                        width: 362,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft,
                            colors: [whiteText, crowberryBlue2],
                            stops: [0.05, 2.0],
                          ),
                        ),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  MihiAppAssetsPath.download,
                                  MihiAppAssetsPath.favorite,
                                  MihiAppAssetsPath.addToPlaylist,
                                  MihiAppAssetsPath.share,
                                ]
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Download", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                                  Text("Favorite", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                                  Text("Add to Playlist", style: TextStyle(fontSize: 8, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                                  Text("Share", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                                ]
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 174,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Brilliant,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: whiteText,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      '05:12',
                                      style: TextStyle(
                                          color: whiteText,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      '05:12',
                                      style: TextStyle(
                                          color: whiteText,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[
                                  MihiAppAssetsPath.repeatBlue,
                                  MihiAppAssetsPath.previousBlue,
                                  MihiAppAssetsPath.pauseBlue,
                                  MihiAppAssetsPath.nextBlue,
                                  MihiAppAssetsPath.shuffleBlue,
                                ]
                              ),
                            ],
                          ),
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