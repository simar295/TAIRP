import 'dart:async';
import 'package:flashlightning/flashlight_ui.dart';
import 'package:flashlightning/intensity_slider.dart';
import 'package:flashlightning/logo.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class torchpage extends StatefulWidget {
  const torchpage({super.key});

  @override
  State<torchpage> createState() => _torchpageState();
}

class _torchpageState extends State<torchpage> {
  TorchController torch = TorchController();
  var isturnedon = false;
  var isexecuting = false;

  void execute() {
    setState(() {
      isexecuting = !isexecuting;
    });
    if (isexecuting) {
      var period = const Duration(milliseconds: 60);
      Timer.periodic(period, (arg) {
        setState(() {
          torch.toggle();
          isturnedon = !isturnedon;
        });
        if (isexecuting == false) {
          isturnedon = false;
          arg.cancel();
        }
      });
    }
  }

///////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InkWell(
          onTap: () {
            setState(() {
              torch.toggle();
              isturnedon = !isturnedon;
            });
          },
          child: Stack(
            children: [
              flashlight_ui(isturnedon: isturnedon),
              const intensityslider(),
              const logo(),
            ],
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 255, 240, 106).withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 255, 251, 0),
            onPressed: () {
              execute();
            },
            child: const Icon(
              Icons.sos_sharp,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
