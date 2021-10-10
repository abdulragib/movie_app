import "package:flutter/material.dart";

class Director extends StatelessWidget {
  const Director({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 160.0),
      child: Container(
          width: 170,
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
          )),
    );
  }
}
