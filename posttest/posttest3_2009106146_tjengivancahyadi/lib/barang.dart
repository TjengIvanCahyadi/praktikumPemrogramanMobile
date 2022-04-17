import 'package:flutter/material.dart';
import 'package:posttest3_2009106146_tjengivancahyadi/data_pengiriman.dart';
import 'package:posttest3_2009106146_tjengivancahyadi/main.dart';

class Barang extends StatefulWidget {
  String namaBarang, fotoBarang;
  int hargaBarang;

  Barang(this.namaBarang, this.hargaBarang, this.fotoBarang);

  @override
  State<Barang> createState() =>
      _BarangState(namaBarang, hargaBarang, fotoBarang);
}

class _BarangState extends State<Barang> {
  String namaBarang, fotoBarang;
  int hargaBarang, quantity = 0;

  _BarangState(this.namaBarang, this.hargaBarang, this.fotoBarang);

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // GAMBAR
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + fotoBarang),
              ),
            ),
          ),
          // NAMA
          Container(
            child: Text(namaBarang),
          ),
          // HARGA
          Container(
            child: Text("Rp$hargaBarang,00"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    quantity--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 50.0,
                height: 35.0,
                color: Colors.white,
                child: Center(
                  child: Text("$quantity"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DataPengiriman(
                        namaBarang, hargaBarang, quantity, fotoBarang)),
              );
            },
            icon: Icon(Icons.shopping_basket),
            label: Text("Beli"),
          ),
        ],
      ),
    );
  }
}
