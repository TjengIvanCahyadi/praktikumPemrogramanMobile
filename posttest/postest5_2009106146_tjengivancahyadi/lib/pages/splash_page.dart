import 'dart:async';

import 'package:flutter/material.dart';
import 'package:postest5_2009106146_tjengivancahyadi/utils/AppColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  start() {
    return Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(
          context,
          '/landing',
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
      backgroundColor: AppColors.mainColor,
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
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),

            // teks "Toko Elektronik"
            const Text(
              "Toko Elektronik",
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 4.0,
                color: AppColors.secondaryColor,
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
