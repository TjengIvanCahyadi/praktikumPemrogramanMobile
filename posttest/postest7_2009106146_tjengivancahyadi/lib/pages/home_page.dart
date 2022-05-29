import 'package:flutter/material.dart';
import 'package:postest7_2009106146_tjengivancahyadi/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //atas
            margin: EdgeInsets.only(top: 55.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8.9,
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 20.09,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(Icons.shopping_basket_outlined),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: HomePageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
