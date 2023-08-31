import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/insight/player_with_playlist.dart';

class SinglePlayerScreen extends StatefulWidget {
  const SinglePlayerScreen({Key? key}) : super(key: key);

  @override
  State<SinglePlayerScreen> createState() => _SinglePlayerScreenState();
}

class _SinglePlayerScreenState extends State<SinglePlayerScreen> {
   
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
                    image: AssetImage(MihiAppAssetsPath.singlePlayer),
                    fit: BoxFit.cover),
              ),
              child: SingleChildScrollView(
                child: Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.blueGrey.withOpacity(0.45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 10),
                              child:
                                  Image.asset(MihiAppAssetsPath.backButton, height: 25),
                            ),
                            GestureDetector(
                              onTap: () {
                              Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) =>PlayerPlaylistScreen())
                              );
                              },
                              child: Text(
                                'Listening to',
                                style: TextStyle(
                                  color: whiteText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: MihiAppAssetsPath.moreWhite,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 450,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 214,
                          width: 338,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: mithril),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomLeft,
                              colors: [whiteText, crowberryBlue2],
                              stops: [0.05, 2.0],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Play List 1',
                                  style: TextStyle(
                                      color: whiteText,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Asa Asake - London Live Music Tour Album',
                                  style: TextStyle(
                                    color: whiteText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
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
                                    width: 100,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '05:12',
                                      style: TextStyle(
                                          color: whiteText,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 40.0),
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
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MihiAppAssetsPath.repeatWhite,
                                  MihiAppAssetsPath.previousWhite,
                                  MihiAppAssetsPath.pauseWhite,
                                  MihiAppAssetsPath.nextWhite,
                                  MihiAppAssetsPath.shuffleWhite,
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}