import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            // tulisan SEARCH
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Text(
                "Search",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),

            // kolom untuk cari
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2),
                ),
                hintText: "Cari barang hilang",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
