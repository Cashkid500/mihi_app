import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import '../constants/text_constants.dart';
import 'featured_playlist.dart';

class PlayerWithPlaylistScreen extends StatefulWidget {
  const PlayerWithPlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlayerWithPlaylistScreen> createState() =>
      _PlayerWithPlaylistScreenState();
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
                    image:
                        AssetImage(MihiAppAssetsPath.playerWithListBackground),
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
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => FeaturedPlaylistScreen()));
                            },
                            child: Image.asset(MihiAppAssetsPath.backButton,
                                height: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            MihiAppText.lt,
                            style: TextStyle(
                              color: blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
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
                        MihiAppText.playlist1,
                        style: TextStyle(
                          color: blackText,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: Text(
                        MihiAppText.london,
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
                                    MihiAppText.one,
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
                                            MihiAppText.m4u,
                                            style: TextStyle(
                                                color: blackText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            MihiAppText.pastFive,
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
                                        MihiAppText.CA,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: mithril,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              DividingLine(),
                              SizedBox(height: 5,),
                              SeaSideCafe(list: MihiAppText.two),
                              SizedBox(height: 5,),
                              DividingLine(),
                              SizedBox(height: 5,),
                              SeaSideCafe(list: MihiAppText.three),
                              SizedBox(height: 5,),
                              DividingLine(),
                              SizedBox(height: 5,),
                              FirstRowDetails(listpath: MihiAppText.four),
                              SizedBox(height: 5,),
                              DividingLine(),
                              SizedBox(height: 5,),
                              FirstRowDetails(listpath: MihiAppText.five),
                              SizedBox(height: 5,),
                              DividingLine(),
                              SizedBox(height: 5,),
                              FirstRowDetails(listpath: MihiAppText.six),
                              SizedBox(height: 5,),
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
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MihiAppAssetsPath.download,
                                    MihiAppAssetsPath.favorite,
                                    MihiAppAssetsPath.addToPlaylist,
                                    MihiAppAssetsPath.share,
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      MihiAppText.download,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      MihiAppText.fav2,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      MihiAppText.atp,
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                    Text(
                                      MihiAppText.share,
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000)),
                                    ),
                                  ]),
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
                                        MihiAppText.pastFive,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        MihiAppText.pastFive,
                                        style: TextStyle(
                                            color: whiteText,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MihiAppAssetsPath.repeatBlue,
                                    MihiAppAssetsPath.previousBlue,
                                    MihiAppAssetsPath.pauseBlue,
                                    MihiAppAssetsPath.nextBlue,
                                    MihiAppAssetsPath.shuffleBlue,
                                  ]),
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

class SeaSideCafe extends StatelessWidget {
  const SeaSideCafe({
    super.key,
    required this.list,
  });

  final String list;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          list,
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
                  MihiAppText.sea,
                  style: TextStyle(
                      color: blackText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  MihiAppText.pastFive,
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
              MihiAppText.CA,
              style: TextStyle(
                  fontSize: 8,
                  color: mithril,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
