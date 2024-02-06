import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class Tools extends StatefulWidget {
  final tit;
  const Tools({super.key, this.tit});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  bool Select = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          Select = true;
        });
      },
      onExit: (event) {
        setState(() {
          Select = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 100),
        curve: Curves.elasticInOut,
        style: Select
            ? GoogleFonts.actor(
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(0, -8),
                  ),
                ],
                fontSize: 20,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Color.fromARGB(255, 247, 9, 17),
              )
            : GoogleFonts.actor(
                fontSize: 20, color: Color.fromARGB(255, 255, 0, 0)),
        child: Text(
          widget.tit,
        ),
      ),
    );
  }
}

class creepy extends StatelessWidget {
  final text;
  final size;
  const creepy(
    this.text,
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.creepster(
        fontSize: size,
      ),
    );
  }
}

class Metal extends StatelessWidget {
  final text;
  final size;
  
  const Metal(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.metalMania(
          fontSize: size, fontWeight: FontWeight.bold, letterSpacing:1,),
    );
  }
}
