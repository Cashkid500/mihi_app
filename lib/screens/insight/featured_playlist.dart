import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/insight/player_with_list.dart';
import 'package:mihi_app/screens/insight/player_with_playlist.dart';

class FeaturedPlaylistScreen extends StatefulWidget {
  const FeaturedPlaylistScreen({Key? key}) : super(key: key);

  @override
  State<FeaturedPlaylistScreen> createState() => _FeaturedPlaylistScreenState();
}

class _FeaturedPlaylistScreenState extends State<FeaturedPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => const PlayerPlaylistScreen()));
                      },
                  child: Image.asset(MihiAppAssetsPath.backButton, height: 25)),
                  SizedBox(
                    width: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MihiAppAssetsPath.share,
                        MihiAppAssetsPath.more,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(MihiAppAssetsPath.happy2),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          MihiAppText.featured,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: mithril,
                          ),
                        ),
                        Text(
                          MihiAppText.happy,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          MihiAppText.london,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: blackText,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          MihiAppText.tracks,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: blackText,
                          ),
                        ),
                        Row(
                          children: [
                            MihiAppAssetsPath.headset,
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              MihiAppText.twoPointOne,
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: blackText,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              MihiAppText.followers,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: blackText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Brilliant,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      MihiAppText.lorem4,
                      style: TextStyle(color: whiteText),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 26,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: whiteText),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MihiAppAssetsPath.addCircleOutline,
                              Text(
                                MihiAppText.follow,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 26,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: whiteText),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MihiAppAssetsPath.favorite2,
                              Text(
                                MihiAppText.fav,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MihiAppAssetsPath.playGrey,
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) => const
                                          PlayerWithPlaylistScreen()));
                                },
                                child: Text(
                                  MihiAppText.pa,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  MihiAppAssetsPath.arrowCircleDownGrey,
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FirstRowDetails(listpath: MihiAppText.one),
                          SizedBox(
                            height: 5,
                          ),
                          DividingLine(),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                MihiAppText.two,
                                style: TextStyle(fontSize: 16),
                              ),
                              Image.asset(MihiAppAssetsPath.cancer),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        MihiAppText.seaCafe,
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          DividingLine(),
                          SizedBox(height: 5,),
                          FirstRowDetails(listpath: MihiAppText.three),
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
                          DividingLine(),
                          SizedBox(height: 5,),
                          FirstRowDetails(listpath: MihiAppText.seven),
                          SizedBox(height: 5,),
                          DividingLine(),
                          SizedBox(height: 5,),
                          FirstRowDetails(listpath: MihiAppText.eight),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DividingLine extends StatelessWidget {
  const DividingLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      decoration: BoxDecoration(color: mithril),
    );
  }
}

class FirstRowDetails extends StatelessWidget {
  const FirstRowDetails({
    super.key,
    required this.listpath,
  });

  final String listpath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          listpath,
          style: TextStyle(fontSize: 16),
        ),
        Image.asset(MihiAppAssetsPath.cancer),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.only(top: 8),
                  child: MihiAppAssetsPath.moreGrey,
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
        )
      ],
    );
  }
}
