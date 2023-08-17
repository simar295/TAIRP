import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:flashlightning/torchpage.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  // root widget.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: torchpage(),
    );
  }
}
