import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pa_profile_and_search/pages/admin_page.dart';
import 'package:pa_profile_and_search/pages/item_detail_page.dart';
import 'package:pa_profile_and_search/pages/landing_page.dart';
import 'package:pa_profile_and_search/pages/login_page.dart';
import 'package:pa_profile_and_search/pages/main_page.dart';
import 'package:pa_profile_and_search/pages/register_page.dart';
import 'package:pa_profile_and_search/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIMBA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/landing': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/main': (context) => const MainPage(),
        '/itemDetail': (context) => const ItemDetailPage(),
        '/admin': (context) => const AdminPage(),
      },
    );
  }
}
