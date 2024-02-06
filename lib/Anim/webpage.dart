import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tools.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    double deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 24,
          opticalSize: 4,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Tools(tit: 'Home'),
            Tools(tit: 'About'),
            Tools(tit: 'This'),
            Tools(tit: 'Contact'),
          ],
        ),
      ),
      body: ListView(
        children: [
          //  *********  FIRST PAGE ********
          Container(
            height: deviceheight - 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(179, 229, 17, 232),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: creepy("I'm Asta ", 40),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Metal("Hanns Village ", 20),
                    SizedBox(
                      height: 10,
                    ),
                    Metal("Vice captain of black Bulls ", 20),
                    SizedBox(
                      height: 10,
                    ),
                    Metal("5-leaf clover Grimoire ", 20),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: CircleAvatar(
                        radius: 143,
                        backgroundColor: Colors.purpleAccent,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/asta.jpg'),
                          radius: 140,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //  **********  SECOND PAGE *********
          Container(
            height: deviceheight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/backAsta.png',
                      height: deviceheight / 3,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   creepy('About me ', 29), 
                    SizedBox(
                      height: 30,
                    ),
                    Metal(
                        "Asta is still left in a daze after   ",
                        15),
                    SizedBox(
                      height: 3,
                    ),
                    Metal(
                        " Yuno also brushed off his declaration  ",
                        15),
                    SizedBox(
                      height: 3,
                    ),
                    Metal("of rivalry.  Asta is the Vice Captain ", 15),
                     SizedBox(height: 8,),
                    Metal(
                        " of black bulls and one of the Magic Knight. ",
                        15),
                        Metal("After his mother abandons him ", 15),
                        SizedBox(height: 8,),
                        Metal("on the church's doorstep.", 15),
                       
                  ],
                ),
                Column(
                  children: [
                     Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Image.asset(
                'assets/yunoB.webp',
                height: deviceheight / 2.7,
                ),
                          ],
                        ),   
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
