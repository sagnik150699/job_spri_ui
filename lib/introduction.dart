import 'package:flutter/material.dart';
import 'package:job_spri_ui/profile.dart';
import 'package:job_spri_ui/variables.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    Variables variable = new Variables();
    return
      Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("How Jobspri works?"),
              IconButton(
                icon: Icon(Icons.next_plan),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 300),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondAnimation,
                          Widget child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.slowMiddle);

                        return ScaleTransition(
                          alignment: Alignment.centerLeft,
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondAnimation) {
                        return Profile();
                        // MaterialPageRoute(
                        //     builder: (context) => Profile()),
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          backgroundColor: Color(0xff4D2136),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    //const Color(0xfffffdd0),

                    const Color(0xff1B1A2A),
                    // const Color(0xff1B192A),
                    const Color(0xff4D2136),
                    const Color(0xff1B192A),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: ListView(
                  children:[
                    SizedBox(height: 40),
                    Container(
                      height: categoryHeight / 6,
                      width: categoryWidth / 1.5,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.pinkAccent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),

                        // color: Color(0xff4D2136),
                        splashColor: Color(0xff4D2136),

                        child: Column(
                          children: [
                            variable.text2(
                                "How", 20.0, Colors.white, FontWeight.bold),
                            SizedBox(
                              height: 5,
                            ),
                            variable.text2(
                                "Select relevant Preference And job expectations that you are looking for as your dream job.",
                                15.0,
                                Colors.white,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: categoryHeight / 6,
                      width: categoryWidth / 1.5,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.pinkAccent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),

                        // color: Color(0xff4D2136),
                        splashColor: Color(0xff4D2136),

                        child: Column(
                          children: [
                            variable.text2(
                                "How", 20.0, Colors.white, FontWeight.bold),
                            SizedBox(
                              height: 5,
                            ),
                            variable.text2(
                                "Select relevant Preference And job expectations that you are looking for as your dream job.",
                                15.0,
                                Colors.white,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: categoryHeight / 6,
                      width: categoryWidth / 1.5,
                      child: MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.pinkAccent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),

                        // color: Color(0xff4D2136),
                        splashColor: Color(0xff4D2136),

                        child: Column(
                          children: [
                            variable.text2(
                                "How", 20.0, Colors.white, FontWeight.bold),
                            SizedBox(
                              height: 5,
                            ),
                            variable.text2(
                                "Select relevant Preference And job expectations that you are looking for as your dream job.",
                                15.0,
                                Colors.white,
                                FontWeight.normal),
                          ],
                        ),
                      ),
                    ),
                  ]

                ),
              ),
            ),
          ]


        ),
      );
  }
}
