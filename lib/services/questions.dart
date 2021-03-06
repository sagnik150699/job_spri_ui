import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_spri_ui/variables.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  bool value=false;
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Questions"),
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
                Container(
                  child: variable.text2("What is the best way to do marketing?", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                      activeColor: Colors.white,
                      checkColor: Colors.blue,
                      value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                  tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),





                SizedBox(height: 30,),
                Container(
                  child: variable.text2("What is the best way to do marketing?", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),






                SizedBox(height: 30,),
                Container(
                  child: variable.text2("What is the best way to do marketing?", 20.0, Colors.white, FontWeight.normal),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20.0),
                  child: CheckboxListTile(
                    title: variable.text2("Option 1", 20.0, Colors.white, FontWeight.normal),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    value: value, onChanged: (v){
                    setState(() {
                      value=v;
                    });

                  },
                    tileColor: Color(0xff4D2136),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
