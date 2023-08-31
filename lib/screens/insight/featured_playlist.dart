import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/insight/player_with_list.dart';

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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(MihiAppAssetsPath.backButton, height: 25),
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
                          "FEATURED",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: mithril,
                          ),
                        ),
                        Text(
                          "Happy",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Asa Asake London Live",
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
                          "128 TRACKS",
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
                          "2.1m",
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
                              "Followers: 32k",
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
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                        style: TextStyle(
                          color: whiteText
                        ),),
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
                          "Follow",
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
                          "Favorite",
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
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>PlayerWithPlaylistScreen())
                                  );
                                  },
                                child: Text(
                                  "Play All",
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
                          Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: const EdgeInsets.only(top: 8),
                                        child: MihiAppAssetsPath.moreGrey,
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
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                           SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                               SizedBox(
                            height: 10,
                          ),
                              Text(
                                "2.",
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
                                        'Seaside Cafe ',
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: const EdgeInsets.only(top: 8),
                                        child: MihiAppAssetsPath.moreGrey,
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
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Music for you',
                                        style: TextStyle(
                                            color: Color(0XFF000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '05:12',
                                        style: TextStyle(
                                          color: Color(0XFF0298A7),
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
                                    'Christopher Amedi',
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Color(0XFF878787),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: Color(0xff878787)
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "7.",
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                            SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: 
                            BoxDecoration(
                              color: mithril
                            ),                       
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "8.",
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
                                        padding: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
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
