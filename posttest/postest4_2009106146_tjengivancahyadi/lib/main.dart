import 'package:flutter/material.dart';
import 'package:postest4_2009106146_tjengivancahyadi/utils/AppColros.dart';
import './barang.dart';
import './home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POSTTEST 3 Tjeng, Ivan Cahyadi 2009106146',
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        // padding: EdgeInsets.all(100.0),
        color: AppColors.color3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image Container
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logoAkilektronika.png"),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Text Nama App
            Text("Akilektronika"),
            SizedBox(height: 20.0),
            // Text Penjelasan Singkat App
            Text(
              "Toko Elektronik Online",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            // Tombol menuju home page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Home();
                    },
                  ),
                );
              },
              child: Text("Go To Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
