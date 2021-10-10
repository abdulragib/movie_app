import 'package:flutter/material.dart';

class actor extends StatelessWidget {
  actor({Key? key, required this.text, required this.textOne})
      : super(key: key);
  String text;
  String textOne;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("$text",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("$textOne",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ],
    );
  }
}
