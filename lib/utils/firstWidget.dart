import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff210F37),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              left: 18,
              bottom: 15,
            ),
            child: Row(
              children: const [
                Image(
                  image: ResizeImage(AssetImage("images/Star1.png"),
                      width: 20, height: 20),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: ResizeImage(AssetImage("images/Star1.png"),
                      width: 20, height: 20),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: ResizeImage(AssetImage("images/Star1.png"),
                      width: 20, height: 20),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: ResizeImage(AssetImage("images/Star1.png"),
                      width: 20, height: 20),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(
                  image: ResizeImage(AssetImage("images/Star1.png"),
                      width: 20, height: 20),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "8.4",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
            ),
            child: Row(
              children: const [
                Text(
                  "Internet Movie",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 140,
                ),
                Text("8.4/10",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 5),
            child: Row(
              children: const [
                Text("Database",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10),
            child: Row(
              children: const [
                Text(
                  "Rotten Tomatoes",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 145,
                ),
                Text("94%",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 15),
            child: Row(
              children: const [
                Text(
                  "Metacritic",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 190,
                ),
                Text("78/100",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
