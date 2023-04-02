import 'package:flutter/material.dart';
import '../constants/infography.dart';
import '../constants/icon_size.dart';
import '../pages/login_page.dart';

class PasswordRecoveryOptionSelection extends StatefulWidget {
  const PasswordRecoveryOptionSelection({Key? key}) : super(key: key);

  @override
  State<PasswordRecoveryOptionSelection> createState() => _PasswordRecoveryOptionSelectionState();
}

class _PasswordRecoveryOptionSelectionState extends State<PasswordRecoveryOptionSelection> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    const SizedBox(width: 30),
                    InkWell(
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
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: fontHeaderThree,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      'Select which contact detail should we use to reset your password',
                      style: TextStyle(
                          fontSize: fontHeaderFour,
                          fontFamily: 'Poppins',
                          color: Colors.black26),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.email_rounded),
                      ),
                      title: const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: fontHeaderFour,
                        ),
                      ),
                      subtitle: const Text(
                        'Send to your mail',
                        style: TextStyle(
                          fontSize: fontHeaderFour,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.phone_rounded),
                      ),
                      title: const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: fontHeaderFour,
                        ),
                      ),
                      subtitle: const Text(
                        'Send to your phone number',
                        style: TextStyle(
                          fontSize: fontHeaderFour,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.green,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: fontHeaderFour,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}