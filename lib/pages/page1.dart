import 'package:flutter/material.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:animate_do/animate_do.dart';

// ignore: camel_case_types
class HAP extends StatelessWidget {
  const HAP({Key? key}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
   {double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,clipBehavior: Clip.none, 
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
            toolbarHeight: 90,
            backgroundColor: Color.fromARGB(255, 21, 21, 21),
            title:Text('GUILTY GEAR'
            ,style: TextStyle(
              fontFamily: 'Impact',
              fontSize: 40,
              letterSpacing: 5,
              color: Color.fromARGB(255, 254, 254, 254))),
      ),
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
                        return Stack(clipBehavior: Clip.none,

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
                                    borderRadius: BorderRadius.circular(10) ,
                                    color: Color.fromARGB(0, 255, 255, 255),
                                  ),
                                  child: Column(
                                    children: [
                                      
                                    ],
                                  ),
                                ), 
                              ),
                            ),
                           Positioned
                              (top: -50,
                              left: 10,
                              right: 0,
                             child:  FadeInRight(
                              duration: Duration(seconds: 1),
                              delay:Duration(milliseconds: 500),
                                    child: const Image(
                                      alignment: Alignment.centerLeft,
                                      height: 450,
                                      width: 450,
                                      image:AssetImage (
                                          'assets/images/bghap.jpg'),
                                    ),
                                  ),
                           ),
                             Positioned(
                              top: 312,
                              left: 10,
                              right: 10,
                                child: Container(
                                  height: 350.0,
                                  width: 370,
                                  color: Color.fromARGB(213, 0, 0, 0),
                                  child: const Align(
                                    alignment: FractionalOffset(0.95, -0.05),
                                    child: const Image(
                                      alignment: Alignment.topLeft,
                                      height: 120,
                                      image:AssetImage (
                                          'assets/images/2star.png'),
                                    ),
                                  ),
                                ),
                              
                            ),
                           Positioned
                           (
                            top: 15,
                            left: -10,
                            right: 0,
                             child: DelayedWidget(
                              delayDuration: Duration(milliseconds: 100),// Not required
                              animationDuration: Duration(milliseconds: 1000),// Not required
                              animation: DelayedAnimations.SLIDE_FROM_LEFT,
                               child: Container(
                                      child: const Image(
                                        alignment: Alignment.topLeft,
                                        height: 400,
                                        image:AssetImage (
                                            'assets/images/HAPcha.png'),
                                      ),
                                    ),
                             ),
                           ),
                            FadeInRight(
                              delay: Duration(milliseconds: 500),
                              child: Align(
                                alignment: FractionalOffset(.95, 0.88),
                                child: Positioned(
                                  child: Container(
                                    
                                    height: 45.0,
                                    width: 180.0,
                                    color: Color.fromARGB(255, 11, 157, 255),
                                    child: const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                  "SHOOTING",
                                  style: TextStyle(
                                    fontFamily: 'Impact',
                                    fontSize: 30,
                                  letterSpacing: 5,
                                  color: Color.fromARGB(255, 255, 255, 255))
                                      ,)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FadeInRight(
                              duration: Duration(seconds: 1),
                              child: Align(
                                  alignment: FractionalOffset(.85, 0.56),
                                  child: Text(
                                  "HAPPY\nCHAOS",
                                  style: TextStyle(shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 10.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                    fontFamily: 'Impact',
                                    fontSize: 50,
                                  letterSpacing: 5,
                                  color: Color.fromARGB(255, 255, 255, 255))
                                      ,)
                                    ),
                            ),
                             Align(
                              alignment: FractionalOffset(0.1, 1.25),
                              child: FadeInUp(
                                     duration: Duration(seconds: 1),
                                      child: Text(
                                "       Gunsliging Broken Messiah",
                                style: TextStyle(shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 10.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ],
                                  fontFamily: 'Kanit',
                                  fontSize: 21,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 255, 255, 255))
                                      ,),
                                    )
                                  ),
                            Align(
                              alignment: FractionalOffset(0.68 ,2.0),
                                child: FadeInUp(
                                duration: Duration(seconds: 1),
                                child:Text(
                                "           He is the Original, who first discovered \nthe Backyard and taught humanity about magic.\nAfter absorbing half of I-No, he suddenly changed\ndrastically.\nHe now carries within himself all of humanity's hope\ntowards living.",
                                style: TextStyle(shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 12.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ],
                                  fontFamily: 'Kanit',
                                  fontSize: 14,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 187, 187, 187))
                                      ,),
                                    )
                                  ),
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
