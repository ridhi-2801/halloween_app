import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

Widget explore=Container(
  child: Padding(
    padding: const EdgeInsets.only(top:56.0),
    child: Column(children: [
      CarouselSlider(
          items: [Image(image:AssetImage("images/1.png")),Image(image:AssetImage("images/2.jpg")),Image(image:AssetImage("images/3.jpg")),Image(image:AssetImage("images/4.jpg")),Image(image: AssetImage("images/halloween-2019-blog-1-1.jpg")),],
          options: CarouselOptions(
            height: 250,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          )
      ),
      Padding(padding: EdgeInsets.only(top:2,left: 8,right: 8,bottom: 6),
      child: Container(
        width: double.infinity,
        height: 400,
        child: ListView(
          children: [
            Text("Halloween is a holiday celebrated each year on October 31, and Halloween 2020 will occur on Saturday, October 31. The tradition originated with the ancient Celtic festival of Samhain, when people would light bonfires and wear costumes to ward off ghosts. In the eighth century, Pope Gregory III designated November 1 as a time to honor all saints. Soon, All Saints Day incorporated some of the traditions of Samhain. The evening before was known as All Hallows Eve, and later Halloween. Over time, Halloween evolved into a day of activities like trick-or-treating, carving jack-o-lanterns, festive gatherings, donning costumes and eating treats.",
            style: TextStyle(fontSize: 18,fontFamily: "GrenzeGotisch"),)
          ],
        ),
      ),),
    ],),
  ),
);

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
            circleColors: [Colors.white,Color(0xff02017b),Color(0xff6f4cf7), Color(0xffaf97f7),],
            iconTheme: IconThemeData(color: Colors.white70),
            activeIconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color(0xff02017b),
            titleStyle: TextStyle(color: Colors.white70,fontSize: 12),
            activeTitleStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
            actionButtonDetails: SCActionButtonDetails(
                color: Colors.black,
                icon: Icon(
                  Icons.expand_less,
                  color: Colors.white,
                ),
                elevation: 2),
            elevation: 2.0,
            items: [
              // Suggested count : 4
              SCBottomBarItem(icon: Icons.festival, title: "Explore", onPressed: () {
                setState(() {
                  explore=Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:56.0),
                      child: Column(children: [
                        CarouselSlider(
                            items: [Image(image:AssetImage("images/1.png")),Image(image:AssetImage("images/2.jpg")),Image(image:AssetImage("images/3.jpg")),Image(image:AssetImage("images/4.jpg")),Image(image: AssetImage("images/halloween-2019-blog-1-1.jpg")),],
                            options: CarouselOptions(
                              height: 250,
                              aspectRatio: 16/9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                            )
                        ),
                        Padding(padding: EdgeInsets.only(top:2,left: 8,right: 8,bottom: 6),
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            child: ListView(
                              children: [
                                Text("Halloween is a holiday celebrated each year on October 31, and Halloween 2020 will occur on Saturday, October 31. The tradition originated with the ancient Celtic festival of Samhain, when people would light bonfires and wear costumes to ward off ghosts. In the eighth century, Pope Gregory III designated November 1 as a time to honor all saints. Soon, All Saints Day incorporated some of the traditions of Samhain. The evening before was known as All Hallows Eve, and later Halloween. Over time, Halloween evolved into a day of activities like trick-or-treating, carving jack-o-lanterns, festive gatherings, donning costumes and eating treats.",
                                  style: TextStyle(fontSize: 18,fontFamily: "GrenzeGotisch"),)
                              ],
                            ),
                          ),),
                      ],),
                    ),
                  );
                });
              }),
              SCBottomBarItem(icon: Icons.card_giftcard, title: "Celebration", onPressed: () {
                setState(() {
               explore = Padding(
                 padding: const EdgeInsets.only(top:56.0,left: 6),
                 child: Container(
                   child: ListView(
                     children: [
                       Center(child: Text("Halloween 2020",style: TextStyle(fontSize: 30,fontFamily: "SyneMono",fontWeight: FontWeight.w900),)),
                       SizedBox(height: 40,),
                       ExpansionCard(
                         background: Image(image: AssetImage("images/trickortreat.jpg"),width: double.infinity,),
                         title: Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Center(
                                 child: Text(
                                   "Trick Or Treat",
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 30),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         children: <Widget>[
                           Container(
                             color: Colors.black,
                             margin: EdgeInsets.symmetric(horizontal: 7),
                             child: Text('Trick-or-treating is a customary celebration for children on Halloween. Children go in costume from house to house, asking for treats such as candy or sometimes money, with the question, "Trick or treat?" The word "trick" implies a "threat" to perform mischief on the homeowners or their property if no treat is given. ',
                             style: TextStyle(color: Colors.white,fontFamily: "GrenzeGotisch",fontSize: 15),
                             ),
                           )
                         ],
                       ),
                       SizedBox(height: 20,),
                       ExpansionCard(
                         background: Image(image: AssetImage("images/pumpkin mass.jpg"),width: double.infinity,),
                         title: Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Center(
                                 child: Text(
                                   "Black Cats and Ghosts ",
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 30),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         children: <Widget>[
                           Container(
                             color: Colors.black,
                             margin: EdgeInsets.symmetric(horizontal: 7),
                             child: Text('Halloween has always been a holiday filled with mystery, magic and superstition. It began as a Celtic end-of-summer festival during which people felt especially close to deceased relatives and friends. For these friendly spirits, they set places at the dinner table, left treats on doorsteps and along the side of the road and lit candles to help loved ones find their way back to the spirit world. ',
                               style: TextStyle(color: Colors.white,fontFamily: "GrenzeGotisch",fontSize: 15),
                             ),
                           )
                         ],
                       ),
                       SizedBox(height: 20,),
                       ExpansionCard(
                         background: Image(image: AssetImage("images/a.jpg"),width: double.infinity,),
                         title: Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Center(
                                 child: Text(
                                   "All Souls Day and Soul Cakes",
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 30),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         children: <Widget>[
                           Container(
                             color: Colors.black,
                             margin: EdgeInsets.symmetric(horizontal: 7),
                             child: Text('The American Halloween tradition of trick-or-treating probably dates back to the early All Souls’ Day parades in England. During the festivities, poor citizens would beg for food and families would give them pastries called “soul cakes” in return for their promise to pray for the family’s dead relatives.',
                               style: TextStyle(color: Colors.white,fontFamily: "GrenzeGotisch",fontSize: 15),
                             ),
                           )
                         ],
                       ),
                       SizedBox(height: 20,),
                       ExpansionCard(
                         background: Image(image: AssetImage("images/p.jpeg"),width: double.infinity,),
                         title: Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Center(
                                 child: Text(
                                   "All Saints' Day",
                                   style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 30),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         children: <Widget>[
                           Container(
                             color: Colors.black,
                             margin: EdgeInsets.symmetric(horizontal: 7),
                             child: Text('On May 13, 609 A.D., Pope Boniface IV dedicated the Pantheon in Rome in honor of all Christian martyrs, and the Catholic feast of All Martyrs Day was established in the Western church. Pope Gregory III later expanded the festival to include all saints as well as all martyrs, and moved the observance from May 13 to November 1.',
                               style: TextStyle(color: Colors.white,fontFamily: "GrenzeGotisch",fontSize: 15),
                             ),
                           )
                         ],
                       ),
                     ],
                   ),
                 ),
               );
                });
              }),
            ],
            circleItems: [
              //Suggested Count: 3
              SCItem(icon: Icon(Icons.format_quote_sharp), onPressed: () {
                setState(() {
                 explore= Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/h.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.format_quote_sharp,color: Colors.white,size: 40,),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left:12.0),
                          child: RotateAnimatedTextKit(
                              text: ["Iil Stop wearing black , if they make a darker color!!", "It's all just a bunch of hocus pocus !!", "If there is no imagination there is no horror!!"],
                              textStyle: TextStyle(fontSize: 40.0, fontFamily: "GrenzeGotisch",color: Colors.white,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start
                          ),
                        ),
                        SizedBox(height: 30,),
                        Icon(Icons.format_quote_sharp,color: Colors.white,size: 40,),
                      ],
                    ),
                  );
                });
              }),
              SCItem(icon: Icon(Icons.people), onPressed: () {
                setState(() {
                  explore=SafeArea(
                    child: Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage("images/q.jpg"),width: double.infinity,fit: BoxFit.fitWidth,),
                          SizedBox(height: 20,),
                          Center(
                            child: Container(
                              width: double.infinity,
                              height: 410,
                              child: ListView(
                                children: [
                                  Center(child: Text("Halloween Characters",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "GrenzeGotisch"),)),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Colors.deepPurple,
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/it.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("IT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 12,),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Color(0xff02017b),
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/Michael Myres.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("Michael Myres",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 12,),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Colors.pink,
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/leia.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("Princess Leia",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 12,),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Colors.brown,
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/anabelle.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("Anabelle",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 12,),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Colors.red,
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/Billy.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("Billy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 12,),
                                  AvatarGlow(
                                    endRadius: 120.0,
                                    glowColor: Colors.purple,
                                    duration: Duration(milliseconds: 2000),
                                    repeat: true,
                                    showTwoGlows: true,
                                    repeatPauseDuration: Duration(milliseconds: 100),
                                    child: Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.grey[100],
                                        backgroundImage:  AssetImage("images/joker.jpg"),
                                        radius: 50.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Center(child: Text("Joker",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
              }),
              //SCItem(icon: Icon(Icons.event), onPressed: () {}),
            ],
            bnbHeight: 80 // Suggested Height 80
        ),
        // Put your Screen Content in Child
        child: Container(
          child: explore,
        ),
      ),
    );
  }
}
