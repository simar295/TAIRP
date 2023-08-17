import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class minmaxtemp extends StatefulWidget {
  const minmaxtemp({super.key,required this.weatherModel});
 final   weatherModel;
  @override
  State<minmaxtemp> createState() => _minmaxtempState();
}

class _minmaxtempState extends State<minmaxtemp> {
  celcius(x) {
    if (x != null) {
      var cel = (x - 273.15);
      return cel.toStringAsFixed(2);
    }
  }

  dateconvert(x) {
    if (x != null) {
      DateTime date = DateTime.fromMillisecondsSinceEpoch(x * 1000);
      String format = DateFormat('jm').format(date);
      return format;
    }
  }

  timeconvert(x) {
    if (x != null) {
      DateTime date = DateTime.fromMillisecondsSinceEpoch(x * 1000);
      String format = DateFormat('E').format(date);
      return format;
    }
  }

  windconvert(x) {
    if (x != null) {
      return x * 2;
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: GlassContainer(
            height: 70,
            width: 310,
            blur: 5,
            color: Colors.white,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 8, 185, 255),
                Color.fromARGB(255, 115, 211, 240),
              ],
            ),
            //--code to remove border
            border: Border.all(color: Color.fromARGB(251, 255, 255, 255)),
            shadowStrength: 5,

            borderRadius: BorderRadius.circular(10),
            shadowColor: Colors.white.withOpacity(0.24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " 🌡️ min temperature ",
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Text(
                    " ${celcius(widget.weatherModel?.main?.tempMin)}°C   ",
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ]),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: GlassContainer(
            height: 70,
            width: 310,
            blur: 5,
            color: Colors.white,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 4, 69, 250),
                Colors.blue,
              ],
            ),
            //--code to remove border
            border: Border.all(color: Color.fromARGB(251, 255, 255, 255)),
            shadowStrength: 5,

            borderRadius: BorderRadius.circular(10),
            shadowColor: Colors.white.withOpacity(0.24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " 🌡️ max temperature ",
                  style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Text(
                  " ${celcius(widget.weatherModel?.main?.tempMax)}°C   ",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
