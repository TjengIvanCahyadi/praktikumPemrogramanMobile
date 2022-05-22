import 'package:flutter/material.dart';
import 'package:postest6_2009106146_tjengivancahyadi/pages/detail_page.dart';
import 'package:postest6_2009106146_tjengivancahyadi/utils/AppColors.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({Key? key}) : super(key: key);

  List<List<dynamic>> data = [
    ["Vivo V23e 8/128", 3975000, "VivoV23e.png"],
    ["Vivo Y15s 3/32", 1775000, "VivoY15s.png"],
    ["Oppo A16 3/32", 1975000, "OppoA16.png"],
    ["Ashely i200 Mic", 300000, "Ashleyi200.png"],
    ["Shure UGX5", 550000, "ShureUGX5.png"],
    ["OASE K11", 150000, "OaseK11.png"],
    ["Remote TV Universal Joker", 30000, "RemoteTVJoker.png"],
    ["Remote TV Akko Star", 30000, "RemoteTVPolytronAkkoStar.png"],
    ["Remote Receiver Garuda", 30000, "ViseroMTXGRD.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // scrollable horizontal listview
        Container(
          width: 310,
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // first item
              InkWell(
                child: Container(
                  width: 310,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // images
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/${data[0][2]}"),
                            ),
                          ),
                        ),
                        // item name
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            data[0][0],
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                        // item price
                        Container(
                          child: Text(
                            "Rp${data[0][1]},00",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        nama: data[0][0],
                        harga: data[0][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[0][2],
                      ),
                    ),
                  );
                },
              ),
              // second item
              InkWell(
                child: Container(
                  width: 310,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // images
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/${data[1][2]}"),
                            ),
                          ),
                        ),
                        // item name
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            data[1][0],
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                        // item price
                        Container(
                          child: Text(
                            "Rp${data[1][1]},00",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        nama: data[1][0],
                        harga: data[1][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[1][2],
                      ),
                    ),
                  );
                },
              ),
              // third item
              InkWell(
                child: Container(
                  width: 310,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // images
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/${data[2][2]}"),
                            ),
                          ),
                        ),
                        // item name
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            data[2][0],
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                        // item price
                        Container(
                          child: Text(
                            "Rp${data[2][1]},00",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        nama: data[2][0],
                        harga: data[2][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[2][2],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        // tulisan "popular"
        Container(
          width: 310.0,
          // margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            "Populer",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: AppColors.secondaryColor,
              fontSize: 20.0,
            ),
          ),
        ),
        // scrollable horizontal listview
        Container(
          width: 310,
          height: 1000,
          // decoration: BoxDecoration(color: Colors.red),
          child: ListView(
            children: [
              // first item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[3][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[3][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[3][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[3][0],
                        harga: data[3][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[3][2],
                      ),
                    ),
                  );
                },
              ),
              // second item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[4][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[4][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[4][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[4][0],
                        harga: data[4][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[4][2],
                      ),
                    ),
                  );
                },
              ),
              // third item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[5][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[5][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[5][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[5][0],
                        harga: data[5][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[5][2],
                      ),
                    ),
                  );
                },
              ),
              // fourth item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[6][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[6][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[6][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[6][0],
                        harga: data[6][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[6][2],
                      ),
                    ),
                  );
                },
              ),
              // fifth item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[7][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[7][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[7][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[7][0],
                        harga: data[7][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[7][2],
                      ),
                    ),
                  );
                },
              ),
              // sixth item
              InkWell(
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
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/${data[8][2]}"),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // item name
                          Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              data[8][0],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ),
                          // item price
                          Container(
                            child: Text(
                              "Rp${data[8][1]},00",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                color: AppColors.secondaryColor,
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
                        nama: data[8][0],
                        harga: data[8][1],
                        deskripsi:
                            "Vestibulum in ultrices urna. Fusce vel varius ligula, eget sodales libero. Ut lobortis, ante ut lacinia ultrices, ipsum erat iaculis augue, nec vestibulum erat elit eget dolor. Aliquam erat volutpat. Sed sed nibh orci. Sed fringilla consectetur aliquam. Curabitur efficitur urna a risus placerat aliquet.",
                        pathGambar: data[8][2],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
