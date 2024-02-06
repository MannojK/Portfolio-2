import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

//  **** Animated And Mouse Region
class Comp extends StatefulWidget {
  final titty;

  const Comp({super.key, this.titty});

  @override
  State<Comp> createState() => _CompState();
}

class _CompState extends State<Comp> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelect = true;
        });
        print('Entered');
      },
      onExit: (_) {
        setState(() {
          isSelect = false;
        });
        print('Exited');
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 50),
        curve: Curves.elasticIn,
        style: isSelect
            ? GoogleFonts.abel(
                color: Colors.transparent,
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -8))],
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 4,
                decorationColor: Color.fromARGB(255, 253, 124, 3),
                wordSpacing: 1,
              )
            : GoogleFonts.abel(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        child: Text(widget.titty),
      ),
    );
  }
}
//  ******  BOLD TEXT 
class BoldTxt extends StatelessWidget {
  final txt;
  final sze;
  const BoldTxt(this.txt, this.sze, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.blaka(fontSize: sze, letterSpacing: 1.0),
    );
  }
}
//  ******  NOMRAL  TEXT 
class NormalTxt extends StatelessWidget {
  final txt;
  final sze;
  const NormalTxt(this.txt, this.sze, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.notoSansLao(fontSize: sze, letterSpacing: 1.0),
    );
  }
}
//  ******  TEXT    FROM  
class TxtForm extends StatelessWidget {
  final heading;
  final width;
  final hitText;
  final maxLine;
  const TxtForm({
    super.key,
    @required this.heading,
    @required this.width,
    @required this.hitText,
    @required this.maxLine,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NormalTxt(heading, 16),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: hitText,
                hintStyle: GoogleFonts.poppins(fontSize: 14)),
          ),
        ),
      ],
    );
  }
}

// **** ANIMATED CARD WEB
class CardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  const CardWeb(
      {super.key,@required this.imagePath, @required this.text, this.fit, this.reverse,
});

  @override
  State<CardWeb> createState() => _CardWebState();
}

class _CardWebState extends State<CardWeb> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0,0.09) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.09),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
    position: _animation,
    child:    Card(
                          elevation: 30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadowColor: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  widget.imagePath,
                                  height: 200,
                                  width: 200,
                                  fit: widget.fit == null?
                                  null:widget.fit,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                               BoldTxt(widget.text, 15),
                              ],
                            ),
                          ),
                        ),
    );
  }
}
