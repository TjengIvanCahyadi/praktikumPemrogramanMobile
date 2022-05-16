import 'package:flutter/material.dart';
import 'package:postest5_2009106146_tjengivancahyadi/data_pengiriman.dart';
import 'package:postest5_2009106146_tjengivancahyadi/utils/AppColors.dart';

class DetailPage extends StatefulWidget {
  final String nama;
  final int harga;
  final String deskripsi;
  final String pathGambar;
  const DetailPage({
    Key? key,
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.pathGambar,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container Gambar
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              width: MediaQuery.of(context).size.width,
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${this.widget.pathGambar}"),
                ),
              ),
            ),
            // Container nama, harga, deskripsi, jumlah barang, tombol increment dan decrement jumlah barang, tombol masukkan keranjang
            Text(
              this.widget.nama,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Rp${this.widget.harga},00",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              this.widget.deskripsi,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.secondaryColor,
              ),
            ),
            Container(
              child: Row(
                children: [
                  // tombol decrement, quantity, tombol increment
                  Container(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.remove,
                            color: AppColors.accentColor,
                          ),
                          onTap: () {
                            if (_quantity > 1) {
                              setState(() {
                                _quantity--;
                              });
                            }
                          },
                        ),
                        SizedBox(width: 5),
                        Text(
                          "$_quantity",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            color: AppColors.accentColor,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          child: Icon(
                            Icons.add,
                            color: AppColors.accentColor,
                          ),
                          onTap: () {
                            setState(() {
                              _quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  // tombol checkout
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: AppColors.secondaryColor,
                      ),
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DataPengiriman(
                            this.widget.nama,
                            this.widget.harga,
                            _quantity,
                            this.widget.pathGambar,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
