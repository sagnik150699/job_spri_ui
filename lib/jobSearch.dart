import 'package:flutter/material.dart';
import 'package:job_spri_ui/services/questions.dart';

import 'variables.dart';

class JobSearch extends StatefulWidget {
  @override
  _JobSearchState createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Job List"),
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
                      return Questions();
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
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: ListView(
              children: [
                SizedBox(height: 30,),
                ListTile(
                  tileColor:Color(0xff4D2136),
                    leading: variable.text2(
                        "Facebook", 20.0, Colors.white, FontWeight.normal),
                    trailing: MaterialButton(
                      child: variable.text2(
                          "Apply", 20.0, Colors.white, FontWeight.normal),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.pinkAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    )
                    //subtitle: variable.text2("Bangalore", 20.0, Colors.white, FontWeight.normal),
                    ),
                SizedBox(height: 10,),
                ListTile(
                    tileColor:Color(0xff4D2136),
                    leading: variable.text2(
                        "Facebook", 20.0, Colors.white, FontWeight.normal),
                    trailing: MaterialButton(
                      child: variable.text2(
                          "Apply", 20.0, Colors.white, FontWeight.normal),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.pinkAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    )
                  //subtitle: variable.text2("Bangalore", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                ListTile(
                    tileColor:Color(0xff4D2136),
                    leading: variable.text2(
                        "Facebook", 20.0, Colors.white, FontWeight.normal),
                    trailing: MaterialButton(
                      child: variable.text2(
                          "Apply", 20.0, Colors.white, FontWeight.normal),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.pinkAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    )
                  //subtitle: variable.text2("Bangalore", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                ListTile(
                    tileColor:Color(0xff4D2136),
                    leading: variable.text2(
                        "Facebook", 20.0, Colors.white, FontWeight.normal),
                    trailing: MaterialButton(
                      child: variable.text2(
                          "Apply", 20.0, Colors.white, FontWeight.normal),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.pinkAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    )
                  //subtitle: variable.text2("Bangalore", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                ListTile(
                    tileColor:Color(0xff4D2136),
                    leading: variable.text2(
                        "Facebook", 20.0, Colors.white, FontWeight.normal),
                    trailing: MaterialButton(
                      child: variable.text2(
                          "Apply", 20.0, Colors.white, FontWeight.normal),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.pinkAccent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    )
                  //subtitle: variable.text2("Bangalore", 20.0, Colors.white, FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
