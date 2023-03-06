import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sp_project/character.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sp_project/etc.dart';

// ignore: camel_case_types
class ProfileScreen extends StatelessWidget {
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
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: const ShapeBorderClipper(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
            child: Container(
              height: 400.0,
              color: Color.fromARGB(233, 167, 10, 10),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
              toolbarHeight: 50,
              backgroundColor: Color.fromARGB(255, 235, 235, 235),
              title: const Text(
                "HOME",
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
                    children: [],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ImageSlideshow(
                      indicatorColor: Color.fromARGB(255, 170, 0, 0),
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 7000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/images/GG4.gif',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/GG1.gif',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/GG2.gif',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/gg3.gif',
                          fit: BoxFit.cover,
                        ),
                      ],
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
                              left: 10,
                              right: 10,
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
                                  height: 210.0,
                                  color: Color.fromARGB(233, 0, 0, 0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 8,
                              left: 0,
                              right: 0,
                              child: FadeIn(
                                duration: Duration(milliseconds: 500),
                                child: const Image(
                                  alignment: Alignment.centerLeft,
                                  height: 180,
                                  image: AssetImage('assets/images/awards.png'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: -85,
                              left: 0,
                              right: 0,
                              child: FadeInRight(
                                duration: Duration(milliseconds: 1000),
                                child: const Image(
                                  alignment: Alignment.centerRight,
                                  height: 400,
                                  image: AssetImage('assets/images/sol.png'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
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
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HOW(),
                                              ));
                                        },
                                        borderRadius: BorderRadius.circular(50),
                                        child: Container(
                                            width: 300,
                                            height: 70,
                                            alignment: Alignment.center,
                                            child: Text(
                                              "LET'S  ROCK",
                                              style: TextStyle(
                                                  fontFamily: 'Impact',
                                                  fontSize: 35,
                                                  letterSpacing: 5,
                                                  color: Color.fromARGB(
                                                      255, 157, 5, 5)),
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
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
