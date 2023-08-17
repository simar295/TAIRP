import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class dailydetails extends StatefulWidget {
  const dailydetails({super.key,required this.weatherModel});
 final weatherModel;
  @override
  State<dailydetails> createState() => _dailydetailsState();
}

class _dailydetailsState extends State<dailydetails> {
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
    return  Container(
                    child: GlassContainer(
                      height: 350,
                      width: 320,
                      blur: 5,
                      color: Colors.white.withOpacity(0.1),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.blue.withOpacity(0.3),
                        ],
                      ),
                      //--code to remove border
                      border:
                          Border.all(color: Color.fromARGB(251, 255, 255, 255)),
                      shadowStrength: 5,
                      shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(16),
                      shadowColor: Colors.white.withOpacity(0.24),
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Next days",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "monday       ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "tuesday       ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "wednesday ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "thursday     ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "friday          ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "saturday     ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Divider(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "sunday       ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            const Icon(Icons.cloud,
                                color: Color.fromARGB(255, 255, 251, 0)),
                            Text(
                              '${celcius(widget.weatherModel?.main?.tempMax)}/${celcius(widget.weatherModel?.main?.tempMin)}',
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  );
  }
}