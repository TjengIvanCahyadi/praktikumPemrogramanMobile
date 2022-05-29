import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest7_2009106146_tjengivancahyadi/data_pengiriman.dart';
import 'package:postest7_2009106146_tjengivancahyadi/getx_controller/quantity_controller.dart';
import 'package:postest7_2009106146_tjengivancahyadi/utils/AppColors.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final int harga;
  final String deskripsi;
  final String pathGambar;
  DetailPage({
    Key? key,
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.pathGambar,
  }) : super(key: key);

  final QuantityController qtyCtrl = Get.put(QuantityController());

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
                  image: AssetImage("assets/images/${pathGambar}"),
                ),
              ),
            ),
            // Container nama, harga, deskripsi, jumlah barang, tombol increment dan decrement jumlah barang, tombol masukkan keranjang
            Text(
              nama,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Rp${harga},00",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              deskripsi,
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
                            if (qtyCtrl.quantity.value > 1) {
                              qtyCtrl.quantityDecrement;
                            }
                          },
                        ),
                        SizedBox(width: 5),
                        Text(
                          "${qtyCtrl.quantity.value}",
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
                            qtyCtrl.quantityIncrement;
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
                            nama,
                            harga,
                            qtyCtrl.quantity.value,
                            pathGambar,
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
