import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          // Background
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'images/appBG.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // content
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                  child: Image.asset(
                    'images/logo.png',
                    width: size.width * 0.5,
                    height: size.height * 0.25,
                  ),
                ),
                Text(
                  'Welcome to FCSC Media',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
