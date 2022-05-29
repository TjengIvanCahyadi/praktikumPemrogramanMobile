import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest7_2009106146_tjengivancahyadi/getx_controller/FirestoreController.dart';
import 'package:postest7_2009106146_tjengivancahyadi/pages/detail_page.dart';
import 'package:postest7_2009106146_tjengivancahyadi/utils/AppColors.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({Key? key}) : super(key: key);

  FirestoreController fsc = Get.put(FirestoreController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // scrollable vertical listview
        Container(
          width: 310,
          height: 1000,
          child: ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: fsc.items.value.orderBy("namaBarang").snapshots(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20.0),
                                    padding: EdgeInsets.only(left: 10.0),
                                    height: 150.0,
                                    child: Row(
                                      children: [
                                        // images
                                        Container(
                                          width: 150,
                                          height: 150,
                                          margin: EdgeInsets.only(right: 10.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/items.png"),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // item name
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 10.0),
                                              child: Text(
                                                e.get('namaBarang'),
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16.0,
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                              ),
                                            ),
                                            // item price
                                            Container(
                                              child: Text(
                                                "Rp${e.get('hargaBarang')},00",
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16.0,
                                                  color:
                                                      AppColors.secondaryColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                          nama: e.get('namaBarang'),
                                          harga: e.get('hargaBarang'),
                                          deskripsi:
                                              "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                                          pathGambar: "items.png",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Text("Gak ada");
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
