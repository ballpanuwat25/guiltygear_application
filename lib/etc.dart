import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sp_project/character.dart';

// ignore: camel_case_types
class HOW extends StatelessWidget {
  const HOW({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/BG.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
              toolbarHeight: 50,
              backgroundColor: Color.fromARGB(255, 235, 235, 235),
              title: const Text(
                "HOW TO PLAY",
                style: TextStyle(
                    fontFamily: 'Impact',
                    fontSize: 35,
                    letterSpacing: 5,
                    color: Color.fromARGB(255, 175, 5, 5)),
              )),
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: 230,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(0, 0, 0, 0),
                                  ),
                                  child: Column(
                                    children: [],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 10,
                              right: 30,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(80),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 200.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -45,
                              right: 20,
                              child: FadeInRight(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.centerLeft,
                                  height: 310,
                                  width: 290,
                                  image: AssetImage('assets/images/HOW1.gif'),
                                ),
                              ),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: Align(
                                  alignment: FractionalOffset(.05, 0.45),
                                  child: Text(
                                    "BASIC\nRULE",
                                    style: TextStyle(
                                        wordSpacing: 1,
                                        fontFamily: 'goth',
                                        fontSize: 25,
                                        letterSpacing: 5,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  )),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: Align(
                                  alignment: FractionalOffset(.04, 0.23),
                                  child: Text(
                                    "01",
                                    style: TextStyle(
                                        fontFamily: 'Impact',
                                        fontSize: 55,
                                        letterSpacing: 5,
                                        color: Color.fromARGB(255, 175, 5, 5)),
                                  )),
                            ),
                            Align(
                                alignment: FractionalOffset(0.3, 0.70),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: Text(
                                    "Use a wide variety of attacks\nto damage your opponent.",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 189, 188, 188)),
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: 60,
                              left: 10,
                              right: 30,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(50),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 120.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -155,
                              left: 20,
                              child: FadeInRight(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.centerLeft,
                                  height: 310,
                                  width: 290,
                                  image: AssetImage('assets/images/HOW2.gif'),
                                ),
                              ),
                            ),
                            Align(
                                alignment: FractionalOffset(0.7, 0.35),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "A series of attacks in the corner\nwill cause you to move to another\narea, resetting your positions.",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 189, 188, 188)),
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: -20,
                              left: 10,
                              right: 30,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 120.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -235,
                              right: 20,
                              child: FadeInRight(
                                duration: const Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.centerLeft,
                                  height: 310,
                                  width: 290,
                                  image: AssetImage('assets/images/HOW3.gif'),
                                ),
                              ),
                            ),
                            Align(
                                alignment: FractionalOffset(0.7, 0.05),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "When your opponent's Healt hits 0,\nThat's a KO. When they lose all their \nHeart icons, your Won!!",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 189, 188, 188)),
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: -200,
                              left: 10,
                              right: 30,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(80),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 200.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 10,
                              right: 30,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(50),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 100.0,
                                  color: Color.fromARGB(233, 255, 255, 255),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -275,
                              right: 20,
                              child: FadeInRight(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.centerLeft,
                                  height: 400,
                                  width: 350,
                                  image:
                                      AssetImage('assets/images/selchar.png'),
                                ),
                              ),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: const Align(
                                  alignment: FractionalOffset(.04, 0),
                                  child: Text(
                                    "02",
                                    style: TextStyle(
                                        fontFamily: 'Impact',
                                        fontSize: 55,
                                        letterSpacing: 5,
                                        color: Color.fromARGB(255, 175, 5, 5)),
                                  )),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: const Align(
                                  alignment: FractionalOffset(.55, 0.22),
                                  child: Text(
                                    " SELECT YOUR CHARACTER",
                                    style: TextStyle(
                                        wordSpacing: 1,
                                        fontFamily: 'goth',
                                        fontSize: 28,
                                        letterSpacing: 5,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  )),
                            ),
                            Positioned(
                              top: 100,
                              child: FadeInLeft(
                                duration: Duration(seconds: 1),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClipPath(
                                    clipper: const ShapeBorderClipper(
                                      shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(40),
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      color: Color.fromARGB(255, 227, 3, 3),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    characterpage(),
                                              ));
                                        },
                                        borderRadius: BorderRadius.circular(50),
                                        child: Container(
                                            width: 290,
                                            height: 70,
                                            alignment: Alignment.center,
                                            child: const Text(
                                              "BORWSE\nCharacters",
                                              style: TextStyle(
                                                  fontFamily: 'Impact',
                                                  fontSize: 25,
                                                  letterSpacing: 5,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: -100,
                              left: 20,
                              right: 20,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(80),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 200.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 20,
                              right: 20,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(30),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 230.0,
                                  color: Color.fromARGB(233, 175, 5, 5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -105,
                              right: 50,
                              child: FadeInRight(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.center,
                                  height: 310,
                                  width: 290,
                                  image: AssetImage('assets/images/HOW4.gif'),
                                ),
                              ),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: const Align(
                                  alignment: FractionalOffset(.6, -0.26),
                                  child: Text(
                                    "MUST-Use Techniques",
                                    style: TextStyle(
                                        wordSpacing: 1,
                                        fontFamily: 'goth',
                                        fontSize: 25,
                                        letterSpacing: 5,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  )),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: const Align(
                                  alignment: FractionalOffset(.04, -0.36),
                                  child: Text(
                                    "03",
                                    style: TextStyle(
                                        fontFamily: 'Impact',
                                        fontSize: 55,
                                        letterSpacing: 5,
                                        color: Color.fromARGB(255, 175, 5, 5)),
                                  )),
                            ),
                            Align(
                                alignment: const FractionalOffset(0.2, 0.45),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "Roman Cancel",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                )),
                            Align(
                                alignment: const FractionalOffset(0.8, 0.75),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "Cancels your attack, sends a shockwave,\nand slows down your opponent's movement.You can use it \nwhile attacking to strengthen your offense, or use it defensively \nto weather your opponent's attacks.\nRC is a mechanic that can add depth to your matches, \ndepending on how you use it.",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 235, 235, 235)),
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              top: -10,
                              left: 20,
                              right: 20,
                              child: ClipPath(
                                clipper: const ShapeBorderClipper(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(30),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 300.0,
                                  color: Color.fromARGB(233, 175, 5, 5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -125,
                              right: 50,
                              child: FadeInRight(
                                duration: Duration(seconds: 1),
                                delay: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.center,
                                  height: 310,
                                  width: 290,
                                  image: AssetImage('assets/images/HOW5.gif'),
                                ),
                              ),
                            ),
                            Align(
                                alignment: const FractionalOffset(0.2, 0.40),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "Psych Burst",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 20,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                )),
                            Align(
                                alignment: const FractionalOffset(0.3, 0.65),
                                child: FadeInUp(
                                  duration: Duration(seconds: 1),
                                  child: const Text(
                                    "When you've been hit by a powerful attack,\nPsych Burst can you get you out of a tough spot!\nIt takes time to re-charge before \nyou can use it again, though, \nso use it wisely.",
                                    style: TextStyle(
                                        fontFamily: 'Kanit',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(255, 235, 235, 235)),
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
