import 'package:flutter/material.dart';
import '../pages/password_recovery_options_page.dart';
import '../pages/signup_page.dart';
import '../constants/infography.dart';
import '../constants/icon_size.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (BuildContext context, _, __){
                                return const Login(); // This navigates to the PasswordRecovery screen when clicked
                              },
                              transitionsBuilder: (___, Animation<double> animation,  ____, Widget child){
                                return FadeTransition(
                                  opacity: animation,
                                  child: RotationTransition(
                                    turns: Tween(begin: 0.5, end: 1.0).animate(animation),
                                    child: child,
                                  ),
                                );
                              }
                          ));
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: IconSizeTwo,
                        ),
                      ),
                    ),
                    _loginPageHeroImage(context),
                    _loginPageInfography(),
                    _loginPageInputFields(context),
                  ],
                ),
              ],
            )
        )
    );
  }
}

Container _loginPageInfography() {
  return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            child: Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: fontHeaderThree,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            child: Text(
              'Proceed with your',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: fontHeaderFour,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      )
  );
}

SizedBox _loginPageHeroImage(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Image.asset(
      'assets/images/1.png',
      width: 200,
      height: 200,
    ),
  );
}

Column _loginPageInputFields(context) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Phone number',
            suffixStyle: TextStyle(fontSize: fontHeaderSix),
            prefixIcon: Icon(
              Icons.phone_android_outlined,
              size: 20,
              color: Colors.black26,
            ),
            prefixIconColor: Colors.black26,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: const TextField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            suffixStyle: TextStyle(fontSize: fontHeaderSix),
            prefixIcon: Icon(
              Icons.key_outlined,
              size: 20,
              color: Colors.black26,
            ),
            prefixIconColor: Colors.black26,
          ),
        ),
      ),
      const SizedBox(height: 20,),
      Container(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: const Text(
                'Login',
                style:
                TextStyle(fontSize: fontHeaderFour, fontFamily: 'Poppins'),
              ),
            ),
          )
      ),
      const SizedBox(height: 30,),
      SizedBox(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __){
                      return const PasswordRecoveryOptionSelection(); // This navigates to the PasswordRecovery screen when clicked
                    },
                    transitionsBuilder: (___, Animation<double> animation,  ____, Widget child){
                      return FadeTransition(
                        opacity: animation,
                        child: RotationTransition(
                          turns: Tween(begin: 0.5, end: 1.0).animate(animation),
                          child: child,
                        ),
                      );
                    }
                ));
              },
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                    fontSize: fontHeaderFour,
                    fontFamily: 'Poppins',
                  color: Colors.blueAccent,
                ),
              )
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 20, right: 5),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                              color: Colors.black26,
                            width: 1.0,
                          )
                      )
                  ),
                ),
                const SizedBox(
                  child: Text('Or'),
                ),
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 5, right: 20),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                              color: Colors.black26,
                            width: 1.0,
                          )
                      )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __){
                      return const Signup(); // This navigates to the signup screen when clicked
                    },
                  transitionsBuilder: (___, Animation<double> animation,  ____, Widget child){
                      return FadeTransition(
                        opacity: animation,
                        child: RotationTransition(
                          turns: Tween(begin: 0.5, end: 1.0).animate(animation),
                          child: child,
                        ),
                      );
                  }
                ));
              },
              child: const Text(
                'Create an account',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Poppins',
                  fontSize: fontHeaderFour
                ),
              ),
            ),
          ],
        )
      )
    ],
  );
}


