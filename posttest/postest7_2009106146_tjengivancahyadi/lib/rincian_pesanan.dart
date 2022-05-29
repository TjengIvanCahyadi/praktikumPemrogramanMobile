import 'package:flutter/material.dart';

class RincianPesanan extends StatelessWidget {
  String namaBarang, fotoBarang, namaLengkap, nomorTelepon, alamat;
  int hargaBarang, jumlahBarang;

  RincianPesanan(this.namaBarang, this.fotoBarang, this.hargaBarang,
      this.jumlahBarang, this.namaLengkap, this.nomorTelepon, this.alamat);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 100.0,
              ),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.pin_drop_rounded),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Alamat Pengiriman",
                        style: TextStyle(
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    namaLengkap,
                  ),
                  Text(nomorTelepon),
                  Text(alamat),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/" + fotoBarang),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          namaBarang,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          "x$jumlahBarang",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          "Rp$hargaBarang,00",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
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
