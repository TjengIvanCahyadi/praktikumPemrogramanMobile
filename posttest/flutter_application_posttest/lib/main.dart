import 'package:flutter/material.dart';

//Shothand of Function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POSTTEST 1 Tjeng, Ivan Cahyadi 2009106146',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posttest 1 Tjeng, Ivan Cahyadi'),
          backgroundColor: Color(0xff23362b),
        ),
        body: Column(
          children: [
            Container(
              width: lebar,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 1.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xff1bb28c),
              ),
              child: Text(
                'Akilektronika',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: lebar,
              height: panjang / 5.5,
              padding: EdgeInsets.all(19.545),
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xffe86a58),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  Text(
                    'Sharp HP-BC50',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Rp950.000,00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print(
                        'https://www.facebook.com/marketplace/item/388923319350234/'),
                    child: Text(
                      'Link Facebook Marketplace',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: lebar,
              height: panjang / 5.5,
              padding: EdgeInsets.all(19.545),
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xfffed45b),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  Text(
                    'Vivo V23e 8/128',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Rp3.975.000,00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print(
                        'https://www.facebook.com/marketplace/item/649907816241979/'),
                    child: Text(
                      'Link Facebook Marketplace',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: lebar,
              height: panjang / 5.5,
              padding: EdgeInsets.all(19.545),
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xff9bc7c5),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  Text(
                    'Oppo A16 3/32',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Rp1.975.000,00',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print(
                        'https://www.facebook.com/marketplace/item/507210117582430/'),
                    child: Text(
                      'Link Facebook Marketplace',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: lebar,
              height: panjang / 8,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(
                top: 1.0,
              ),
              decoration: BoxDecoration(
                // color: Color(0xffefeeea),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff87e9f8),
                    Color(0xff23a4ca),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      'Whatsapp: +6285251192209',
                      style: TextStyle(
                        fontSize: 8.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      'Facebook: Ivan Cahyadi',
                      style: TextStyle(
                        fontSize: 8.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      'Instagram: @ivancahyaditjeng',
                      style: TextStyle(
                        fontSize: 8.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
