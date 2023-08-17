import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherize/widgets/detailswidget.dart';
import 'package:weatherize/repo.dart';
import 'package:weatherize/weather_model.dart';
import 'package:intl/intl.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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

  TextEditingController controller = TextEditingController();
  WeatherModel? weatherModel;
  var isloading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/564x/56/39/d2/5639d230c3dd71e527c7a227907d7b33.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Weatherize",
              style: GoogleFonts.pacifico(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.data_usage_rounded,
                    size: 25,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ))
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: TextField(
                            controller: controller,
                            onTap: () {
                              controller.selection = TextSelection.collapsed(
                                  offset: controller.text.length);
                            },
                            onSubmitted: (value) async {
                              setState(() {
                                isloading = true;
                              });
                              try {
                                weatherModel = await Repo().getWeather(value);
                              } catch (e) {
                                print(weatherModel?.main?.temp);
                              }

                              setState(() {
                                isloading = false;
                              });
                            },
                            textAlign: TextAlign.center,
                            textCapitalization: TextCapitalization.characters,
                            style: GoogleFonts.nunito(
                                fontSize: 30,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            decoration: const InputDecoration(
                              hintText: "Search Cities",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        if (celcius(weatherModel?.main?.temp) != null ||
                            weatherModel?.main?.temp != null)
                          Container(
                            child: isloading
                                ? CircularProgressIndicator()
                                : Text(
                                    '${celcius(weatherModel?.main?.temp).toString()}°C',
                                    style: GoogleFonts.nunito(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                          ),
                        if (weatherModel?.main?.temp != null)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " ${dateconvert(weatherModel?.dt)},",
                                style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text(
                                " ${timeconvert(weatherModel?.dt)}",
                                style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (weatherModel?.main?.temp != null)
                          Text(
                            " ${weatherModel?.weather?.elementAt(0).description} ☁︎",
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (weatherModel?.main?.temp != null)
                      Text(
                        "    Today ",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 82, 81, 81)),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (isloading) Center(child: CircularProgressIndicator()),
                    if (weatherModel?.main?.temp != null)
                      detailwidget(weatherModel: weatherModel),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
