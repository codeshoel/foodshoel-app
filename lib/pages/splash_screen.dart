import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade600,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: (MediaQuery.of(context).size.width),),
          SizedBox(
            // padding: const EdgeInsets.only(20.0),
            child: Image.asset(
                'assets/images/app_logo.png',
                width: 300.0,
                height: 300.0,
              ),
            ),
        ],
      )
    );
  }
}
