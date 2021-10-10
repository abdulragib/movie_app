import 'package:flutter/material.dart';

class secondWidget extends StatelessWidget {
  const secondWidget({Key? key, required this.icon, required this.text})
      : super(key: key);

  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: ResizeImage(AssetImage(icon), width: 25, height: 25),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          "$text",
          style: const TextStyle(color: Colors.white, fontSize: 23),
        ),
      ],
    );
  }
}
