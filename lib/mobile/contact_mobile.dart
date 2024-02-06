import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
         child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 29),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: CircleAvatar(
                radius: 49,
                backgroundImage: AssetImage('assets/eren.jpg'),
              ),
            ),
          ), 
          TabsMobile(text: "Home", route: '/'),
          SizedBox(
            height: 20,
          ),
          TabsMobile(text: "Works", route: '/works'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: "Blog", route: '/Blog'),
          SizedBox(
            height: 20,
          ),
          TabsMobile(text: "About", route: '/About'),
          SizedBox(
            height: 20,
          ),
          TabsMobile(text: "contact", route: '/contact'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35,
                  )),
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    color: Colors.black,
                    width: 35,
                  )),
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/twitter.svg",
                    color: Colors.black,
                    width: 35,
                  )),
            ],
          ),
        ],
      )),
      body: NestedScrollView(
          headerSliverBuilder: (
            BuildContext context,
            bool innerBoxIsScrolled,
          ) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Column(

              children: [
                 SansBold("Contact me", 35.0),
                 SizedBox(height: 20,),
                Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                   
                    TextForm(
                        heading: "First name",
                        width: widthDevice/1.4,
                        hintText: "Enter your first name ",
                        maxLine: 1),
                    TextForm(
                        heading: "Last name",
                        width: widthDevice/1.4,
                        hintText: "Enter your Last name ",
                        maxLine: 1),
                
                    TextForm(
                        heading: " Email ",
                        width: widthDevice/1.4,
                        hintText: " xyz@gmail ",
                        maxLine: 1),
                    TextForm(
                        heading: " Phone Number ",
                        width: widthDevice/1.4,
                        hintText: " + 4 435 235 ",
                        maxLine: 1),
                            TextForm(
                        heading: "Message",
                        width: widthDevice/1.4,
                        hintText: "Enter your message ",
                        maxLine: 9),
                        MaterialButton(
                          elevation: 20.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          height: 60,
                          minWidth: widthDevice/2.2,
                          color: Colors.tealAccent,
                          onPressed: (){

                        },
                        child: Text("Submit"),),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
