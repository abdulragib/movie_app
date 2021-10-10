import 'package:flutter/material.dart';
import 'utils/movie_info.dart';

main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieScreen(),
      theme: ThemeData(
        fontFamily: 'Montserrat-Regular',
      ),
    );
  }
}

class MovieScreen extends StatelessWidget {
  MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: const Color(0xff210f37),
        image: DecorationImage(
          image: const AssetImage("images/bgbloop.png"),
          colorFilter: ColorFilter.mode(
              const Color(0xff210f37).withOpacity(0.2), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                width: 350,
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.cancel),
                    hintText: "Avengers: Endgame",
                    hintStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Movie(
                banner: "images/avenger.png",
                text: "Avengers: Endgame",
                time: "2 hours 1 minute",
              ),
              const SizedBox(
                height: 25,
              ),
              Movie(
                  banner: "images/endgame.png",
                  text: "Avengers",
                  time: "2 hours 1 minute"),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Movie extends StatelessWidget {
  Movie({required this.banner, required this.text, required this.time});
  final String banner;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => movieInfo()),
        );
      },
      child: Column(
        children: [
          Container(
              width: 370,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(banner),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 10),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: const Text(
                        "  ★ 8.4/10",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "$text",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 45.0),
                child: Image(
                  image: AssetImage("images/Group356.png"),
                  height: 15,
                  width: 20,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "$time",
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
