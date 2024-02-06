import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Example/comp.dart';
import 'package:portfolio/components.dart';

class Pc extends StatefulWidget {
  const Pc({super.key});

  @override
  State<Pc> createState() => _PcState();
}

class _PcState extends State<Pc> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 25,
          ),
          title: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Comp(titty: 'Home'),
              Spacer(),
              Comp(titty: 'About'),
              Spacer(),
              Comp(titty: 'This'),
              Spacer(),
              Comp(titty: 'More'),
              Spacer(),
              Comp(titty: 'hello'),
              Spacer(),
            ],
          ),
        ),
        body: ListView(
          children: [
            // **********         FIRST PAGE       ***********
            Container(
              height: heightDevice - 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: BoldTxt("Hello I'm", 28),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      BoldTxt('Manoj Kumar ', 23),
                      SizedBox(
                        height: 15,
                      ),
                      NormalTxt('Flutter Developer ', 18),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(
                            width: 20,
                          ),
                          BoldTxt('Bnr13080@gmail.com', 23),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 20,
                          ),
                          BoldTxt('+324 2445 2345', 23),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 20,
                          ),
                          BoldTxt('Hyderabad', 23),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 147,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 147,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 140,
                        backgroundImage: AssetImage('assets/eren.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ******  SECOND PAGE **********
            Container(
                height: heightDevice / 1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/web.jpg',
                      height: heightDevice / 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BoldTxt("About me ", 27),
                        SizedBox(
                          height: 15,
                        ),
                        NormalTxt(
                            "And Just like that everything changed  ", 15),
                        NormalTxt(
                            "At that terrible moments in our hearts we  ", 15),
                        NormalTxt(
                            "Know that home was a pen humanity cattle ", 15),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(4),
                              child: NormalTxt('Implusive', 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(4),
                              child: NormalTxt('Hot Headed', 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(4),
                              child: NormalTxt('Passionate', 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    style: BorderStyle.solid,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(4),
                              child: NormalTxt('Freedome Fighter', 14),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
            //   *********   THIRD PAGE *********
            Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoldTxt(" Awards ", 35),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Card(
                        //   elevation: 30,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        //   shadowColor: Colors.red,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(18.0),
                        //     child: Column(
                        //       children: [
                        //         Image.asset(
                        //           'assets/images.jpg',
                        //           height: 200,
                        //           width: 200,
                        //         ),
                        //         SizedBox(
                        //           height: 10,
                        //         ),
                        //         NormalTxt(" Best Massacre", 15),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                       CardWeb(imagePath: "assets/images.jpg", text: "Best massarce"),
                       CardWeb(imagePath: 'assets/voice.jpg', text: "Protogonist",fit: BoxFit.contain,reverse: true,),
                       CardWeb(imagePath: 'assets/actor.jpg', text: "Best Actor"),
                       
                      ],
                    ),
                  )
                ],
              ),
            ),
//            ******* FOURTH PAGE *********
            Container(
              height: heightDevice,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NormalTxt("Contact me ", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TxtForm(
                              heading: "First Name ",
                              width: 350,
                              hitText: "Enter Your name",
                              maxLine: 1),
                          SizedBox(
                            height: 10,
                          ),
                          TxtForm(
                              heading: "Last Name ",
                              width: 350,
                              hitText: "Surname",
                              maxLine: 1),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TxtForm(
                              heading: " Email ",
                              width: 350,
                              hitText: "xyz@gmail.com",
                              maxLine: 1),
                          SizedBox(
                            height: 10,
                          ),
                          TxtForm(
                              heading: "Mobile Number",
                              width: 350,
                              hitText: "+ 345 6323 6656",
                              maxLine: 1),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
