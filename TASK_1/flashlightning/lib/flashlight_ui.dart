import 'package:flutter/cupertino.dart';

class flashlight_ui extends StatelessWidget {
  const flashlight_ui({super.key, required this.isturnedon});
  final bool isturnedon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: isturnedon
                  ? const AssetImage("assets/vector2.jpg")
                  : const AssetImage("assets/vector1.jpg"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              alignment: Alignment.center)),
    );
  }
}
