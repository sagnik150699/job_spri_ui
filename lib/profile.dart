import 'package:flutter/material.dart';
import 'package:job_spri_ui/jobPreference.dart';
import 'package:job_spri_ui/variables.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool inputName = false;
  bool inputNumber = false;
  bool inputAddress = false;
  bool inputCity = false;
  bool inputJob =false;
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Profile section?"),
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
                      return JobPreference();
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
      body:
      Stack(
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
            child:
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  //Name
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: categoryHeight / 15,
                    //width: categoryWidth / 3,
                    color: Color(0xff4D2136),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          variable.text2(
                              "Name", 20.0, Colors.white, FontWeight.normal),
                          inputName
                              ? IconButton(
                              icon: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputName=false;
                                });


                              })
                              : IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputName = true;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //Number
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: categoryHeight / 15,
                    //width: categoryWidth / 3,
                    color: Color(0xff4D2136),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          variable.text2(
                              "Number", 20.0, Colors.white, FontWeight.normal),
                          inputNumber
                              ? IconButton(
                              icon: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputNumber=false;
                                });


                              })
                              : IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputNumber = true;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //Address
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: categoryHeight / 15,
                    //width: categoryWidth / 3,
                    color: Color(0xff4D2136),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          variable.text2(
                              "Address", 20.0, Colors.white, FontWeight.normal),
                          inputAddress
                              ? IconButton(
                              icon: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputAddress=false;
                                });


                              })
                              : IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputAddress = true;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //City
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: categoryHeight / 15,
                    //width: categoryWidth / 3,
                    color: Color(0xff4D2136),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          variable.text2(
                              "City", 20.0, Colors.white, FontWeight.normal),
                          inputCity
                              ? IconButton(
                              icon: Icon(
                                Icons.save,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputCity=false;
                                });


                              })
                              : IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                setState(() {
                                  inputCity = true;
                                });
                              }),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
