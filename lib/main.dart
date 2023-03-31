import 'package:flutter/material.dart';

import '../constants/infography.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: Container(
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _loginPageHeroImage(context),
                    _loginPageInfoGraphy(),
                    _loginPageInputFields(context),
                  ],
                ),
              ],
            )));
  }
}

AppBar _buildAppBar(context) {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 10, top: 20),
        child: Row(
          children: const [
            Icon(
              Icons.arrow_back_ios,
              size: IconSizeThree,
              color: Colors.black26,
            ),
            Text(
              'Back',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: fontHeaderThree,
                  color: Colors.black26),
            )
          ],
        ),
      ));
}

Container _loginPageInfoGraphy() {
  return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            child: Text(
              'Proceed with your',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: fontHeaderThree,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: fontHeaderOne,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'Poppins'),
            ),
          )
        ],
      ));
}

SizedBox _loginPageHeroImage(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Image.asset(
      'assets/images/1.png',
      width: 300,
      height: 300,
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
      Container(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
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
          )),
      SizedBox(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(fontSize: fontHeaderFour, fontFamily: 'Poppins'),
          ),
        ),
      )
    ],
  );
}
