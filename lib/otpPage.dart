import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_spri_ui/introduction.dart';
import 'package:job_spri_ui/variables.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    String pins;
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    Variables variable = new Variables();
    return Scaffold(
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
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               OTPTextField(
                 length: 5,
                 width: MediaQuery.of(context).size.width,
                 textFieldAlignment: MainAxisAlignment.center,
                 fieldWidth: 50,
                 fieldStyle: FieldStyle.underline,
                 style: TextStyle(fontSize: 25,
                     color: Colors.white
                 ),
                 onCompleted: (pin) {
                   pins=pin;
                   print("Completed: " + pin);
                 },
               ),
               SizedBox(height: 40,),
               Container(
                 height: categoryHeight / 13,
                 width: categoryWidth / 2.5,
                 child: MaterialButton(
                   child: Text(
                     "Next",
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
                           builder: (context) => Introduction()),
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
         ),
       ],
     )
    );
  }
}
