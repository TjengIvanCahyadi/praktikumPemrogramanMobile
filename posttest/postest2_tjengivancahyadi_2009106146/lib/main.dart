import 'package:flutter/material.dart';
import './barang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POSTTEST 2 Tjeng, Ivan Cahyadi 2009106146',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;

    var namaBarang = [
      "Vivo V23e 8/128",
      "Vivo Y15s 3/32",
      "Oppo A16 3/32",
      "Ashely i200 Mic",
      "OASE K11",
      "Shure UGX5",
      "Remote TV Universal Joker",
      "Remote TV Akko Star",
      "Remote Receiver Garuda",
    ];

    var hargaBarang = [
      "Rp3.975.000,00",
      "Rp1.775.000,00",
      "Rp1.975.000,00",
      "Rp300.000,00",
      "Rp 150.000,00",
      "Rp 550.000,00",
      "Rp 30.000,00",
      "Rp 30.000,00",
      "Rp 30.000,00",
    ];

    var linkFbM = [
      "https://www.facebook.com/marketplace/item/649907816241979/",
      "https://www.facebook.com/marketplace/item/991897601754879/",
      "https://www.facebook.com/marketplace/item/507210117582430/",
      "https://www.facebook.com/marketplace/item/953977651982466/",
      "https://www.facebook.com/marketplace/item/353254420073472/",
      "https://www.facebook.com/marketplace/item/375306487836111/",
      "https://www.facebook.com/marketplace/item/706259100567527/",
      "https://www.facebook.com/marketplace/item/707482227053941/",
      "https://www.facebook.com/marketplace/item/716195566054789/",
    ];

    var gambar = [
      "VivoV23e.png",
      "VivoY15s.png",
      "OppoA16.png",
      "Ashleyi200.png",
      "OaseK11.png",
      "ShureUGX5.png",
      "RemotTVJoker.png",
      "RemoteTVAkkoStar.png",
      "ViseroMTXGRD.png",
    ];

    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Container(
            child: Row(
              children: [
                Container(
                  // LOGO APLIKASI
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logoAkilektronika.png'),
                    ),
                  ),
                ),
                Container(
                  // CONTAINER NAMA DAN NIM
                  width: 230,
                  height: 100,
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff001219),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Tjeng, Ivan Cahyadi\n2009106146",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // CONTAINER KATEGORI "SMARTPHONE"
            child: Text(
              "Smartphone",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
          ),
          Container(
            // BASE CONTAINER FOR 3 SUB CONTAINER
            width: lebar,
            height: 400,
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xff94D2BD),
              borderRadius: BorderRadius.circular(10),
            ),
            // 3 SUBCONTAINER DENGAN LAYOUTING ROW
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Barang(
                        namaBarang[0],
                        hargaBarang[0],
                        linkFbM[0],
                        gambar[0],
                      ),
                      Barang(
                        namaBarang[1],
                        hargaBarang[1],
                        linkFbM[1],
                        gambar[1],
                      ),
                      Barang(
                        namaBarang[2],
                        hargaBarang[2],
                        linkFbM[2],
                        gambar[2],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // CONTAINER KATEGORI "AUDIO"
            child: Text(
              "Audio",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
          ),
          Container(
            // BASE CONTAINER FOR 3 SUB CONTAINER
            width: lebar,
            height: 400,
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xff94D2BD),
              borderRadius: BorderRadius.circular(10),
            ),
            // 3 SUBCONTAINER DENGAN LAYOUTING ROW
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Barang(
                        namaBarang[3],
                        hargaBarang[3],
                        linkFbM[3],
                        gambar[3],
                      ),
                      Barang(
                        namaBarang[4],
                        hargaBarang[4],
                        linkFbM[4],
                        gambar[4],
                      ),
                      Barang(
                        namaBarang[5],
                        hargaBarang[5],
                        linkFbM[5],
                        gambar[5],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // CONTAINER KATEGORI "REMOTE"
            child: Text(
              "Remote",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              right: 10.0,
            ),
          ),
          Container(
            // BASE CONTAINER FOR 3 SUB CONTAINER
            width: lebar,
            height: 400,
            margin: EdgeInsets.only(
              top: 20.0,
              left: 10.0,
              right: 10.0,
              bottom: 10.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xff94D2BD),
              borderRadius: BorderRadius.circular(10),
            ),
            // 3 SUBCONTAINER DENGAN LAYOUTING ROW
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Barang(
                        namaBarang[6],
                        hargaBarang[6],
                        linkFbM[6],
                        gambar[6],
                      ),
                      Barang(
                        namaBarang[7],
                        hargaBarang[7],
                        linkFbM[7],
                        gambar[7],
                      ),
                      Barang(
                        namaBarang[8],
                        hargaBarang[8],
                        linkFbM[8],
                        gambar[8],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
