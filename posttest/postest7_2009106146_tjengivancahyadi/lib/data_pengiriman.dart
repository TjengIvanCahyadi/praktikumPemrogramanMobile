import 'package:flutter/material.dart';
import 'package:postest7_2009106146_tjengivancahyadi/rincian_pesanan.dart';

class DataPengiriman extends StatelessWidget {
  String namaBarang, fotoBarang;
  int hargaBarang, jumlahBarang;

  DataPengiriman(
      this.namaBarang, this.hargaBarang, this.jumlahBarang, this.fotoBarang);

  var namaLengkap = "";
  var nomorTelepon = "";
  var alamat = "";

  final namaLengkapCTRL = new TextEditingController();
  final nomorTeleponCTRL = new TextEditingController();
  final alamatCTRL = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: namaLengkapCTRL,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Lengkap",
                  hintText: "Isi Nama Lengkap",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: nomorTeleponCTRL,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nomor Telepon",
                  hintText: "Isi Nomor Telepon",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: alamatCTRL,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Alamat",
                  hintText: "Isi Alamat",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      namaLengkap = namaLengkapCTRL.text;
                      nomorTelepon = nomorTeleponCTRL.text;
                      alamat = alamatCTRL.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RincianPesanan(
                            namaBarang,
                            fotoBarang,
                            hargaBarang,
                            jumlahBarang,
                            namaLengkap,
                            nomorTelepon,
                            alamat,
                          ),
                        ),
                      );
                    },
                    child: Text("Checkout"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
