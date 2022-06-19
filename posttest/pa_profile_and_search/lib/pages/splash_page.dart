import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  start() {
    return Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(
          context,
          (FirebaseAuth.instance.currentUser != null) ? "/main" : "/landing",
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo aplikasi
            Container(
              width: 200.0,
              height: 40.18,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),

            // teks "Toko Elektronik"
            const Text(
              "SIMBA",
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 4.0,
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
