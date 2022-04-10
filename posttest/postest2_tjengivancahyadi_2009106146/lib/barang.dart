import 'package:flutter/material.dart';

class Barang extends StatelessWidget {
  String namaBarang;
  String hargaBarang;
  String linkBarang;
  String fotoBarang;

  Barang(this.namaBarang, this.hargaBarang, this.linkBarang, this.fotoBarang);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 380,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xffe9d8a6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // GAMBAR
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + fotoBarang),
              ),
            ),
          ),
          // NAMA
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(namaBarang),
          ),
          // HARGA
          Container(
            child: Text(hargaBarang),
          ),
          // TOMBOL => BISA PAKAI CONTAINER ATAU ELEVATED BUTTON
          ElevatedButton(
            onPressed: () => print(linkBarang),
            child: Text("Facebook Marketplace"),
          )
        ],
      ),
    );
  }
}
