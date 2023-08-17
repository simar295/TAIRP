import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import 'package:intl/intl.dart';
import 'package:weatherize/widgets/extradetailswidget.dart';
import 'package:weatherize/widgets/minmaxtempwidget.dart';
import 'package:weatherize/widgets/sunsetwidget.dart';
import 'dailydetailswidget.dart';


class detailwidget extends StatefulWidget {
  const detailwidget({super.key, required this.weatherModel});
  final weatherModel;

  @override
  State<detailwidget> createState() => _detailwidgetState();
}

class _detailwidgetState extends State<detailwidget> {
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
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: GlassContainer(
        height: 1020, /////////////////////////////////////////////////
        width: 200,
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
        /*  border: Border.all(
                              color: Color.fromARGB(251, 255, 255, 255)), */
        shadowStrength: 5,
        shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(16),
        shadowColor: Colors.white.withOpacity(0.24),
        child: Container(
          padding: EdgeInsets.all(2),
          child: Column(
            children: [
              sunwidget(
                weatherModel: widget.weatherModel,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  minmaxtemp(weatherModel: widget.weatherModel),
                  SizedBox(
                    height: 10,
                  ),
                  extradetails(weatherModel: widget.weatherModel),
                  SizedBox(
                    height: 10,
                  ),
                  dailydetails(weatherModel: widget.weatherModel),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
