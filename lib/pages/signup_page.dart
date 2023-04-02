import 'package:flutter/material.dart';
import 'package:foodshoel/constants/infography.dart';
import 'package:foodshoel/pages/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)
              )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30.0),
                      margin: const EdgeInsets.only(top: 15.0),
                      width: MediaQuery.of(context).size.width,
                        child: const Flexible(
                          flex: 1,
                          child: Text(
                            'SingUp and have a mouth watering yumi!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: fontHeaderThree
                            ),
                          )
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                              left: (
                                  (MediaQuery.of(context).size.width) / 2),
                              top: 30.0,
                            ),
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              'assets/images/1.png',
                              width: 150,
                              height: 150,
                            )
                        ),
                        _formExpandedCustomWidget(context),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Expanded _formExpandedCustomWidget(context){
  return Expanded(
    flex: 1,
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0)
          )
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'FullName',
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontHeaderFour,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
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
                    child: const Text(
                      'I already have an account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontHeaderFour,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
