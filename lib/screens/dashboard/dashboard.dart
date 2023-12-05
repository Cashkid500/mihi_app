import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard_notification.dart';
import 'package:mihi_app/screens/dashboard/dashboard_search.dart';
import '../constants/text_constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height + 900,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MihiAppAssetsPath.dashboardBackground),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(123, 21, 18, 18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(MihiAppText.morning,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: whiteText
                          ),
                          ),
                          SizedBox(
                            width: 85.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) => const
                                                  DashboardSearchScreen()));
                                    },
                                child: Image.asset(MihiAppAssetsPath.searchImage, height: 25,)),
                                GestureDetector(
                                onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) => const
                                                  DashboardNotificationScreen()));
                                    },
                                child: Image.asset(MihiAppAssetsPath.notificationImage, height: 25,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                     const SizedBox(height: 300.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(MihiAppText.popular,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: whiteText
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(MihiAppAssetsPath.ambImage, width: 180,),
                          const SizedBox(width: 10.0),
                          Image.asset(MihiAppAssetsPath.pianoImage, width: 170,),
                        ],
                      ),
                      const SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(MihiAppText.ambience, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: whiteText),),
                          ),
                          const SizedBox(width: 10.0),
                          Text(MihiAppText.soft, style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300, color: whiteText, fontStyle: FontStyle.italic),),
                          const SizedBox(width: 26.0),
                          Text(MihiAppText.piano, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: whiteText),),
                          const SizedBox(width: 10.0,),
                          Text(MihiAppText.soft, style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300, color: whiteText, fontStyle: FontStyle.italic),),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(MihiAppText.recommended2,  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: whiteText),),
                      ),
                      const SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.happy),),
                          ),
                          const SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.happy, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.lullaby, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          const SizedBox(width: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.cancer),),
                          ),
                          const SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.cancer, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.lullaby, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                        ],
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.singer),),
                          ),
                          const SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.timeless, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.timelessTime, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          const SizedBox(width: 34.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.therapy),),
                          ),
                          const SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.mihi, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.lullaby, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                        ],
                          )
                        ],
                      ),
                      const SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.pianist),),
                          ),
                          const SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.ambiance, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.ambianceTime, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          const SizedBox(width: 31.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.femaleSinger),),
                          ),
                          const SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(MihiAppText.sleep, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              const SizedBox(height: 10.0,),
                              Text(MihiAppText.lullaby, style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                        ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.5,
              child: Container(
                height: 60.0,
                width: size.width,
                decoration: BoxDecoration(color: whiteText),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 65.0,),
                      child: Text(MihiAppText.live,
                      style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: mithril),),
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [ 
                        Container(
                               width: 35.0,
                               height: 35.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Brilliant),
                                 borderRadius: BorderRadius.circular(40),
                              
                               ),  
                               child: 
                               Image.asset(MihiAppAssetsPath.play),                     
                             ),   
                            Container(
                               width: 250,
                               height: 8,
                               decoration: BoxDecoration(
                                 color: orochimaru,
                                 borderRadius: BorderRadius.circular(16),
                               ), 
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              Container(
                                width: 170.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                color: caribbeanSea,
                                borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ],
                               ),                      
                             ),   
                        Image.asset(MihiAppAssetsPath.volume),
                      ],
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
