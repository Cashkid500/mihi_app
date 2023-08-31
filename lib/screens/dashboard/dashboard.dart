import 'package:flutter/material.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/color_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard_notification.dart';

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
                      SizedBox(height: 32.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Good morning Chris A.",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: whiteText
                          ),),
                          SizedBox(
                            width: 85.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(MihiAppAssetsPath.searchImage, height: 25,),
                                Image.asset(MihiAppAssetsPath.notificationImage, height: 25,),
                              ],
                            ),
                          ),
                        ],
                      ),
                     SizedBox(height: 300.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Popular Playlist",
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
                          SizedBox(width: 10.0),
                          Image.asset(MihiAppAssetsPath.pianoImage, width: 170,),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Ambience", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: whiteText),),
                          ),
                          SizedBox(width: 10.0),
                          Text("- Soft solumn anthem", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300, color: whiteText, fontStyle: FontStyle.italic),),
                          SizedBox(width: 26.0),
                          Text("PianoRelax", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: whiteText),),
                          SizedBox(width: 10.0,),
                          Text("- Soft solumn anthem", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300, color: whiteText, fontStyle: FontStyle.italic),),
                        ],
                      ),
                      SizedBox(height: 50),
                      GestureDetector(
                        onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) =>DashboardNotificationScreen())
                      );
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Recommended Playlist",  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: whiteText),),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.happy),),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Happy", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("SOFT LULLABY 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          SizedBox(width: 15.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.cancer),),
                          ),
                          SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cancer", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("SOFT LULLABY 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                        ],
                          )
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.singer),),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Timeless", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("Timeless 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          SizedBox(width: 34.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.therapy),),
                          ),
                          SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("MiHi Classical", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("SOFT LULLABY 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                        ],
                          )
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.pianist),),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ambiance", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("Ambiance 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
                            ],
                          ),
                          SizedBox(width: 31.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image(image: AssetImage(MihiAppAssetsPath.femaleSinger),),
                          ),
                          SizedBox(width: 3.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sleep Therapy", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: whiteText),),
                              SizedBox(height: 10.0,),
                              Text("SOFT LULLABY 12:00 AM - 12:00 AM", style: TextStyle(fontSize: 7, fontWeight: FontWeight.w400, color: whiteText,),),
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
                      child: Text("Live Broadcast - MiHi Radio",
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
