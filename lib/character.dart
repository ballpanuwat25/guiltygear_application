import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sp_project/pages/page5.dart';
import 'package:sp_project/pages/page6.dart';
import 'package:sp_project/pages/page7.dart';
import 'package:sp_project/pages/page8.dart';
import 'package:sp_project/pages/page1.dart';
import 'package:sp_project/pages/page2.dart';
import 'package:sp_project/pages/page3.dart';
import 'package:sp_project/pages/page4.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

// ignore: camel_case_types
class characterpage extends StatelessWidget {
  const characterpage({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Color.fromARGB(255, 224, 224, 224),
          title: const Text(
            "CHARACTER",
            style: TextStyle(
                fontFamily: 'Impact',
                fontSize: 35,
                letterSpacing: 5,
                color: Color.fromARGB(255, 175, 5, 5)),
          )),
      // ignore: prefer_const_literals_to_create_immutables
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: FadeInDown(
          duration: Duration(milliseconds: 500),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sol(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/solpro.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NAGOROYUKI(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/NApro.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HAP(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/HAPpro.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Fau(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/FAUpro.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Axl(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/archive_axl.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CHIPP(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/archive_chp.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LEO(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/archive_leo.jpg'),
                    ),
                  ),
                ),
              ),
              Bounceable(
                duration: Duration(seconds: 1),
                curve: Curves.easeOutCubic,
                scaleFactor: 0.7,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ZATO(),
                      ));
                },
                child: Container(
                  width: 250,
                  margin: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 22, 22, 22), //New
                        blurRadius: 30.0,
                      )
                    ],
                  ),
                  child: const ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/archive_zat.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
