import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class extradetails extends StatefulWidget {
  const extradetails({super.key,required this.weatherModel});
  final  weatherModel;

  @override
  State<extradetails> createState() => _extradetailsState();
}

class _extradetailsState extends State<extradetails> {
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(225, 28, 154, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/2903/2903592.png"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "humidity",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${widget.weatherModel?.main?.humidity}%",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(225, 28, 154, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/223/223082.png"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "visibility",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${windconvert(widget.weatherModel?.visibility)} ",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(223, 28, 161, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/2272/2272228.png"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "wind",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${windconvert(widget.weatherModel?.wind?.speed)} km/h",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(225, 28, 154, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/1839/1839341.png"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "pressure",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${widget.weatherModel?.main?.pressure}",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(225, 28, 154, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/616/616450.png"),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Ground Level",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${windconvert(widget.weatherModel?.main?.grndLevel)} ",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
            Container(
              child: GlassContainer(
                height: 145,
                width: 100,
                blur: 5,
                color: Colors.white,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(141, 253, 253, 253),
                    Color.fromARGB(223, 28, 161, 238),
                  ],
                ),
                //--code to remove border
                /*  border: Border.all(
                                                    color: Color.fromARGB(
                                                        251, 255, 255, 255)), */
                shadowStrength: 5,

                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.white.withOpacity(0.24),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://cdn-icons-png.flaticon.com/512/2903/2903569.png"),
                    ),

                    /* 
                                                    const Icon(
                                                      Icons.wind_power_outlined,
                                                      color: Colors.white,
                                                      size: 40,
                                                    ), */
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sea Level",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      " ${widget.weatherModel?.main?.seaLevel} ",
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
