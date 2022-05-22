import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/cart_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/home_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/landing_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/login_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/register_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/splash_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/widgets/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Routing
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/landing': (context) => LandingPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/cart': (context) => CartPage(),
        '/bottomnb': (context) => CBottomNavBar(),
      },
      debugShowCheckedModeBanner: false,
      title: 'POSTTEST 6 2009106146 Tjeng, Ivan Cahyadi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
