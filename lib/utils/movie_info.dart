import 'package:flutter/material.dart';
import 'package:movie_app/utils/firstWidget.dart';
import 'package:movie_app/utils/secondWidget.dart';
import 'Director.dart';
import 'actor.dart';

class movieInfo extends StatelessWidget {
  const movieInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff17082A),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 390.0, left: 30),
                        child: Text(
                          "Avengers: Endgame",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 100.0),
                        child: Text(
                          "Action, Advanture, Drama",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 570,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.5), BlendMode.dstATop),
                      image: const AssetImage("images/game.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff210F37),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                              image: ResizeImage(
                                  AssetImage("images/Vector27.png"),
                                  width: 25,
                                  height: 30)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff210F37),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                              image: ResizeImage(
                                  AssetImage("images/Path-1.png"),
                                  width: 30,
                                  height: 30)),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff210F37),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                              image: ResizeImage(AssetImage("images/Path.png"),
                                  width: 30, height: 30)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const FirstWidget(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 330,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff210F37),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 35),
                        child: secondWidget(
                            icon: "images/Group357.png", text: "2019"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 35),
                        child: secondWidget(
                            icon: "images/Vector.png", text: "United States"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 35),
                        child: secondWidget(
                            icon: "images/Group356.png", text: "181 Min"),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 35),
                        child: secondWidget(
                            icon: "images/Group358.png",
                            text: "English, Japanese,"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75.0, top: 15),
                        child: Row(
                          children: const [
                            Text("Xhosa, German",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 810,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff210F37),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 25),
                        child: Row(
                          children: const [
                            Text(
                              "Plot",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 20, right: 40),
                        child: Text(
                            "\"After the devastating events of Avengers: infinity War (2018), the universe is in  ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe\"",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Row(
                          children: const [
                            Text("Director",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Director(text: "ANTHONY RUSSO"),
                      const SizedBox(
                        height: 15,
                      ),
                      const Director(text: "JOE RUSSO"),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Row(
                          children: const [
                            Text("Actors",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140.0, top: 15),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("ROBERT DOWNEY JR.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      actor(text: "CHRIS EVANS", textOne: "RUFFALOS"),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Row(
                          children: const [
                            Text("Writer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      actor(text: "CHRISTOPHER", textOne: "STEPHEN"),
                      Padding(
                        padding: const EdgeInsets.only(right: 260.0, top: 10),
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "STAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
