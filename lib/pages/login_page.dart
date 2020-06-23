import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool boolValue = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 320.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff022561),
                    Color(0xff499ED5),
                  ],
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 20.0,
                      right: 20.0,
                      bottom: 20.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                print("LOGIN PRESSED");
                              },
                              child: Text(
                                "LOGIN",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: .6,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "REGISTER",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: .6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Welcome to",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff9BBDD2),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "FlyMind",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffe1e5ea),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "100% online learning from the world's best",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffFDFDFD),
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  Text(
                    "universities and companies",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xffFDFDFD),
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Icon(
                    Icons.play_circle_outline,
                    color: Color(0xffe1e5ea),
                    size: 60.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                right: 30.0,
                left: 30.0,
              ),
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                decoration: InputDecoration(
                  hintText: "USERNAME",
                  hintStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                right: 30.0,
                left: 30.0,
              ),
              child: TextFormField(
                obscureText: true,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  hintStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.security,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  right: 30.0,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "FORGOT PASSWORD ?",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Color(0xff26aaef),
                    )),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(
                top: 0.0,
                right: 30.0,
                left: 30.0,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () => _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text(
                        "Welcome to FlyMind",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  color: Color(0xff26aaef),
                  padding: const EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  elevation: 1.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            CheckboxListTile(
              value: boolValue,
              onChanged: (bool value) {
                setState(() {
                  boolValue = !boolValue;
                  print(boolValue);
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                "Remenber me",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color(0xff696e7a),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: .2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
