import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Deku/tool.dart';
import 'package:portfolio/web/landing_page_web.dart';
import 'package:portfolio/components.dart';
class Pagee extends StatefulWidget {
  const Pagee({super.key});

  @override
  State<Pagee> createState() => _PageeState();
}

class _PageeState extends State<Pagee> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(116, 227, 154, 0),
        elevation: 0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Color.fromARGB(255, 9, 79, 11),
        ),
        title: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            tool(
              tut: "Home ",
            ),
            Spacer(),
            tool(
              tut: " About ",
            ),
            Spacer(),
            tool(
              tut: " Contact ",
            ),
            Spacer(),
            tool(
              tut: " Pro ",
            ),
            Spacer(),
          ],
        ),
      ),
      // backgroundColor: Color.fromRGBO(116, 227, 154, 1),
      backgroundColor: Color.fromRGBO(115,234,204,1),
      body: ListView(
        children: [
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
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Fone("Hello I'm", 29),
                    ),
                    SizedBox(height: 15,),
                    Fone("Izuku Midoriya", 60),
                    // SizedBox(height: 2,),
                   Ftwo(text: "Super Hero", size: 20,Color: Colors.red,),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.blur_circular_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Ftwo(text: "All for One ", size: 20,),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.school_sharp,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                       Ftwo(text: "Aldera Junior High ", size: 20),
                       
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.class_,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Ftwo(text: "Class 1-A ", size: 25,)
                       
                      ],
                    ),
                   
                  ],
                ),
                CircleAvatar(
                  radius: 169,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 163,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 160,
                      backgroundImage: AssetImage("assets/deku.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //  ****** SECOND PAGE ********
           Container(
          height: heightDevice /1.5,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/dekuS.png',
              height: widthDevice/1.8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/plus.png',
              height: widthDevice/4,),
                  Text("This story about how I became a hero .  ",style: GoogleFonts.salsa(fontSize: 30),),
                ],
              ),
            ],
           ),
           ),
          //  **** THIRD PAGE 
          Container(
            height: heightDevice/1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                 anime(imagePath: "allmight.jpg", text: "All might"),
                 anime(imagePath: "izuku.png", text: "Izuku Midoriya",reverse: true,fit: BoxFit.contain,),
                 anime(imagePath: "bakugo.png", text: "Bakugo"),
                ],
              )
              ],
            ),
          ),
          // ****** FOURTH PAGE ********
        //   Container(
        // height: heightDevice,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Fone("Contact me ",40),
        //        Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             children: [
        //               ff(width: 350, hintText: "Enter your name ", maxLine: 1),
        //               SizedBox(height: 40,),
        //               ff(width: 350, hintText: "Email Adress", maxLine: 1),
        //             ],
        //           ),
        //               Column(
                   
        //             children: [
        //               ff(width: 350, hintText: "Enter your name ", maxLine: 1),
        //               SizedBox(height: 40,),
        //               ff(width: 350, hintText: "Email Adress", maxLine: 1),
        //             ],
        //           ),
        //         ],
        //        )
        //       ],
        //     ),
            
        //   ),
         Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextForm(
                          width: 350,
                          heading: "First name ",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextForm(
                          width: 350,
                          heading: "Last name ",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        //  SizedBox(height: 18,),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          width: 350,
                          heading: "Email",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextForm(
                          width: 350,
                          heading: "Mobile Number ",
                          hintText: "+ 382 234 4590  ",
                          maxLine: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                // TextForm(
                //     heading: "Message",
                //     width: 350,
                //     hintText: "Please type your  message ",
                //     maxLine: 1),
                // MaterialButton(
                //     elevation: 20.0,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     height: 60,
                //     minWidth: 200,
                //     color: Colors.tealAccent,
                //     child: SansBold("Submit ", 20.0),
                //     onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 