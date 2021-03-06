import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_spri_ui/otpPage.dart';
import 'package:job_spri_ui/variables.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _numberField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    Variables variable = new Variables();

    return Scaffold(
      body: Stack(children: [
        //Background colour
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
        ListView(
          children: [
            SizedBox(
              height: categoryHeight / 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image(image: AssetImage("images/image.png")),
            ),
            SizedBox(height: 40),
            //Mobile number input
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
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.pinkAccent,
                  ),
                  hintText: "Mobile Number",
                  hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Login
                Container(
                  height: categoryHeight / 13,
                  width: categoryWidth / 2.5,
                  child: MaterialButton(
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpPage()),
                      );

                    },
                    splashColor: Colors.pinkAccent,
                    // color: Colors.pink[300],
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pinkAccent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),

                    //Border.all(color: Colors.pinkAccent,width: 2.0)
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                //Register
                Container(
                  height: categoryHeight / 13,
                  width: categoryWidth / 2.5,
                  child: MaterialButton(
                    child: Text(
                      "REGISTER",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpPage()),
                      );

                    },
                    splashColor: Colors.pinkAccent,
                    // color: Colors.pink[300],
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.pinkAccent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),

                    //Border.all(color: Colors.pinkAccent,width: 2.0)
                  ),
                ),
              ],
            ),


          ],
        )
      ]),
    );
  }
}
