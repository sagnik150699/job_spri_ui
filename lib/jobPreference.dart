import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_spri_ui/jobSearch.dart';
import 'package:job_spri_ui/variables.dart';
import 'package:flutter/scheduler.dart';

class JobPreference extends StatefulWidget {
  @override
  _JobPreferenceState createState() => _JobPreferenceState();
}

class _JobPreferenceState extends State<JobPreference> {
  bool value=false;
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    TextEditingController _numberField = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Job Preference"),
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
                      return JobSearch();
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
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView(children: [
              SizedBox(height: 30),
              //JOb category
              Container(
                height: categoryHeight / 15,
                color: Color(0xffff005c),
                child: variable.text2("Job category", 25.0, Colors.white, FontWeight.normal),
              ),
              SizedBox(height: 20),
              //Job category checklist
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child: Container(
                  height: categoryHeight / 5,
                  color: Color(0xff4D2136),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CheckboxListTile(
                          activeColor: Colors.white,
                          checkColor: Colors.blue,
                          title: variable.text2("Marketing", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                            setState(() {
                              value=v;
                            });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Marketing", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Marketing", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Marketing", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Marketing", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ),



              SizedBox(height: 30),
              //JOb Industry
              Container(
                height: categoryHeight / 15,
                color: Color(0xffff005c),
                child: variable.text2("Job Industry", 25.0, Colors.white, FontWeight.normal),
              ),
              SizedBox(height: 20),
              //Job Industry checklist
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child: Container(
                  //margin: EdgeInsets.all(10.0),
                  height: categoryHeight / 5,
                  color: Color(0xff4D2136),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Education", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Education", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Education", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Education", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Education", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),

                      ],
                    ),
                  ),
                ),
              ),





              SizedBox(height: 30),
              //JOb Type
              Container(
                height: categoryHeight / 15,
                color: Color(0xffff005c),
                child: variable.text2("Job Type", 25.0, Colors.white, FontWeight.normal),
              ),
              SizedBox(height: 20),
              //Job Type checklist
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child: Container(
                  //margin: EdgeInsets.all(10.0),
                  height: categoryHeight / 8,
                  color: Color(0xff4D2136),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("Full TIME", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                        CheckboxListTile(
                            activeColor: Colors.white,
                            checkColor: Colors.blue,
                            title: variable.text2("PART TIME", 20.0, Colors.white, FontWeight.normal),
                            secondary: Icon(Icons.beach_access,color: Colors.white,),
                            value:value,
                            onChanged: (v){
                              setState(() {
                                value=v;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ),





              SizedBox(height: 30),
              //Salary
              Container(
                height: categoryHeight / 15,
                color: Color(0xffff005c),
                child: variable.text2("Salary expectation in LPA", 25.0, Colors.white, FontWeight.normal),
              ),
              //Min Salary
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextFormField(
                  controller: _numberField,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  //obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),

                    hintText: "Minimum Amount",
                    hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),











            ]),
          )
        ],
      ),
    );
  }
}
