import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2/chapter.dart';
import 'package:flutter_bootcamp_2/colors.dart';
import 'package:flutter_bootcamp_2/main.dart';
import 'package:flutter_bootcamp_2/my_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print("screen width: ${size.width}");
    print("screen height: ${size.height}");
    return Scaffold(
        appBar: AppBar(
          centerTitle: true, //for Android
          title: Text(
            "Pizza",
            style: TextStyle(fontFamily: "Pacifico", fontSize: size.width / 16),
          ),
          backgroundColor: mainColor,
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Beef Cheese",
                    style: TextStyle(
                        fontSize: size.width / 11,
                        color: mainColor,
                        fontWeight: FontWeight.bold)),
                Image.asset("images/pizza_image.png"),
                Row(
                  //left - start - leading(Swift)
                  //right - end - trailing
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyChip(content: "Cheese", onPressed: () {}),
                    MyChip(content: "Sausage", onPressed: () {}),
                    MyChip(content: "Olive", onPressed: () {}),
                    MyChip(content: "Pepper", onPressed: () {}),
                  ],
                ),
                const Chapter(
                  requiredTime: 20,
                  type: "Delivery",
                  motto: "Meat Lover, get ready to meet your pizza!",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("\$5.98",
                        style: TextStyle(
                            fontSize: size.width / 9,
                            color: mainColor,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: size.height / 15,
                      width: size.width / 2,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: mainColor, shape: const StadiumBorder()),
                          child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                fontSize: size.width / 21, color: textColor1),
                          )),
                    )
                  ],
                )
              ]),
        ));
  }
}
