import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(55, 60, 50, 50),
        child: RichText(
          text: TextSpan(
            text: 'THE⚡ \n',
            style: GoogleFonts.bebasNeue(
                color: Colors.white, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: 'FLASH',
                  style: GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' LIGHTNING',
                  style: GoogleFonts.bebasNeue(
                      color: const Color.fromARGB(255, 255, 251, 0),
                      fontSize: 55,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
