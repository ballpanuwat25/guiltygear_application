import 'package:flutter/material.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:animate_do/animate_do.dart';

// ignore: camel_case_types
class NAGOROYUKI extends StatelessWidget {
  const NAGOROYUKI({Key? key}) : super(key: key);
  
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
                                          'assets/images/BGna.jpg'),
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
                            top: 0,
                            left: -10,
                            right: 0,
                             child: DelayedWidget(
                              delayDuration: Duration(milliseconds: 100),// Not required
                              animationDuration: Duration(milliseconds: 1000),// Not required
                              animation: DelayedAnimations.SLIDE_FROM_LEFT,
                               child: Container(
                                      child: const Image(
                                        alignment: Alignment.topLeft,
                                        height: 450,
                                        image:AssetImage (
                                            'assets/images/NAcha.png'),
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
                                    color: Color.fromARGB(255, 244, 0, 0),
                                    child: const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                  "ONE-SHOT",
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
                                  "NAGORI\nYUKI",
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
                              alignment: FractionalOffset(0.65, 1.6),
                              child: FadeInUp(
                                     duration: Duration(seconds: 1),
                                      child: Text(
                                "      A noble vampire samurai whose \nvampiric blade delivers devastating \nblows.",
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
                              alignment: FractionalOffset(0.38 ,1.80),
                                child: FadeInUp(
                                duration: Duration(seconds: 1),
                                child:Text(
                                "           A large vampire samurai. \nHis supernatural vampire abilities complement his\nsubstantial frame and outstanding fighting skills.",
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
