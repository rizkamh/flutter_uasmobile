import 'dart:async';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _Firstpage();
}

class _Firstpage extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushNamed(
        context,
        '/login',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              stops: const [
                0.3,
                0.6,
              ],
              colors: [
                Color.fromARGB(255, 221, 197, 205),
                Color.fromARGB(255, 151, 38, 74),
              ]),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundColor: Colors.pinkAccent,
              child: Text(
                'Stisla',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 90,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 228, 216, 216),
                      blurRadius: 10,
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
