import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      body: SafeArea(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child:Container(
              height: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: SingleChildScrollView(
                child:SizedBox(
                  height: 620,
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                          "Login Form",
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.red
                            )
                        )
                      ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email Address *",
                          hintStyle: GoogleFonts.aBeeZee(
                            fontSize: 15,
                            color: Colors.grey
                            ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red,width: 2),
                          ),
                        ),
                        cursorColor: Colors.red,
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password *",
                          hintStyle: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red,width: 2),
                          ),
                        ),
                        cursorColor: Colors.red,
                      ),
                      SizedBox(height: 40),

                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.red,
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.only(top: 16, bottom: 16),
                          child:Text(
                            "Login",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              color: Colors.white
                            )
                          ),
                        ),
                        ),

                      SizedBox(height: 60),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                              "New User",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20,
                                  color: Colors.red
                              )
                          ),
                        ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
       ),
    );
  }

}
