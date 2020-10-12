import 'package:flutter/material.dart';
import 'package:maxposv2/animations/fade_animation.dart';
import 'package:maxposv2/components/responsive.dart';
import 'package:maxposv2/components/rounded_button.dart';
import 'package:maxposv2/components/rounded_input_field.dart';
import 'package:maxposv2/components/rounded_password_field.dart';
import 'package:maxposv2/screens/dashboard/main.dart';
import 'package:maxposv2/screens/register/register_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        height:
                            SizeConfig.safeBlockVertical * 30, //10 for example
                        width: SizeConfig.safeBlockHorizontal * 40,
                        child: FadeAnimation(
                          1,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-1.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        height:
                            SizeConfig.safeBlockVertical * 21, //10 for example
                        width: SizeConfig.safeBlockHorizontal * 98,
                        child: FadeAnimation(
                          1.3,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/light-2.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                        height:
                            SizeConfig.safeBlockVertical * 33, //10 for example
                        width: SizeConfig.safeBlockHorizontal * 160,
                        child: FadeAnimation(
                          1.6,
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/clock.png'))),
                          ),
                        ),
                      ),
                      Positioned(
                          height: SizeConfig.safeBlockVertical *
                              55, //10 for example
                          width: SizeConfig.safeBlockHorizontal * 103,
                          child: FadeAnimation(
                            1.9,
                            Container(
                              child: Center(
                                child: Text(
                                  "login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 38),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                FadeAnimation(
                  2.2,
                  Container(
                    child: Center(
                      child: RoundedInputField(),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.safeBlockHorizontal * 1),
                FadeAnimation(
                  2.5,
                  Container(
                    child: Center(
                      child: RoundedPasswordField(),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                FadeAnimation(
                  2.9,
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 600),
                            type: PageTransitionType.leftToRightWithFade,
                            child: DashboardScreen())),
                    child: Container(
                      height: SizeConfig.safeBlockHorizontal * 13,
                      width: SizeConfig.safeBlockHorizontal * 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(143, 148, 251, 1),
                            Color.fromRGBO(143, 148, 251, .6)
                          ],
                        ),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                // SizedBox(height: 70,),
                FadeAnimation(
                  2.8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Belum punya akun ?",
                        style: TextStyle(
                          color: Color.fromRGBO(143, 148, 251, 6),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Register Tapped");
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: Duration(milliseconds: 700),
                                  type: PageTransitionType.leftToRightWithFade,
                                  // alignment: Alignment.centerLeft,
                                  child: RegisterScreen()));
                        },
                        child: Text(
                          " Daftar",
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
