import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class intensityslider extends StatefulWidget {
  const intensityslider({super.key});

  @override
  State<intensityslider> createState() => _intensitysliderState();
}

class _intensitysliderState extends State<intensityslider> {
  double _value = 20;

  showAlertDialog() {
    return showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Intensity Changed'),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 450, left: 300, right: 25, bottom: 80),
      child: RotatedBox(
        quarterTurns: 3,
        child: Slider(
          activeColor: const Color.fromARGB(255, 255, 251, 0),
          thumbColor: const Color.fromARGB(255, 255, 255, 255),
          inactiveColor: const Color.fromARGB(255, 73, 73, 73),
          overlayColor:
              const MaterialStatePropertyAll(Color.fromARGB(255, 255, 251, 14)),
          min: 0.0,
          max: 200.0,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
              if (value > 120) {
                showAlertDialog();
              }
            });
          },
        ),
      ),
    );
  }
}
