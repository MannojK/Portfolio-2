import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class tool extends StatefulWidget {
  final tut;
  tool({super.key, this.tut});

  @override
  State<tool> createState() => _toolState();
}

class _toolState extends State<tool> {
  @override
  Widget build(BuildContext context) {
    bool selc = false;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          selc = true;
        });
      },
      onExit: (_) {
        setState(() {
          selc = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: selc
            ? GoogleFonts.orbitron(
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
                fontSize: 18,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.patrickHand(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 9, 79, 11),
                fontWeight: FontWeight.w600,
                fontSize: 25),
        child: Text(
          widget.tut,
        ),
      ),
    );
  }
}

//            ****** FONT ONE *********
class Fone extends StatelessWidget {
  final text;
  final size;
  const Fone(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.cevicheOne(fontSize: size, color: Colors.black));
  }
}

class Ftwo extends StatelessWidget {
  final text;
  final size;
  final Color;
  const Ftwo({
    super.key,
    @required this.text,
    @required this.size,
    this.Color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.kenia(
          fontSize: size,
          color: Color,
        ));
  }
}

class ff extends StatelessWidget {
  final hintText;
  final maxLine;
  final width;
  const ff({
    super.key,
    @required this.width,
    @required this.hintText,
    @required this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        children: [
          TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(5),
            //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
            // ],
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),

            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ],
      ),
    );
  }
}

class anime extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  const anime(
      {super.key,
      @required this.imagePath,
      @required this.text,
      this.fit,
      this.reverse});

  @override
  State<anime> createState() => _animeState();
}

class _animeState extends State<anime> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);
  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
    child: Card(
         elevation: 30,
         color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: Color.fromARGB(255, 0, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            widget.imagePath,
                            height: 200,
                            width: 200,
                            fit:  widget.fit == null?null:widget.fit,
                          ),
                          SizedBox(height: 10,),
                        Ftwo(text: widget.text, size: 20)
                        ],
                      ),
                    ),
    ),
    );
  }
}
