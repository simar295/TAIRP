import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class sunwidget extends StatefulWidget {
  const sunwidget({super.key, required this.weatherModel});
  final weatherModel;

  @override
  State<sunwidget> createState() => _sunwidgetState();
}

class _sunwidgetState extends State<sunwidget> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 155,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.gifer.com/embedded/download/42tJ.gif"),
                fit: BoxFit.cover),
          ),
          child: Center(
              child: Text(
            " sunrise\n${dateconvert(widget.weatherModel?.sys?.sunrise)}",
            style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 137, 2)),
          )),
        ),
        Spacer(),
        Container(
          height: 155,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.gifer.com/embedded/download/B1yK.gif"),
                fit: BoxFit.cover),
          ),
          child: Center(
              child: Text(
            " sunset\n${dateconvert(widget.weatherModel?.sys?.sunset)}",
            style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 137, 2)),
          )),
        ),
      ],
    );
  }
}
