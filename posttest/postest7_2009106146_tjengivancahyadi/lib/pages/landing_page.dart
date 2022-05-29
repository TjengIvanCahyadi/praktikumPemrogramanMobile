import 'package:flutter/material.dart';
import 'package:postest7_2009106146_tjengivancahyadi/utils/AppColors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      // container untuk membungkus seluruh widget
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                // logo aplikasi
                Container(
                  width: 200.0,
                  height: 40.18,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),

                // teks deskripsi
                const Text(
                  "Toko Elektronik Samarinda Terbaik",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.secondaryColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "1. Lengkap? Tentu saja!",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.accentColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "2. Harga? Murah banget!",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.accentColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "3. Biaya Pengiriman? GRATIS lah!",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.accentColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Column(
              children: [
                //
                InkWell(
                  child: Container(
                    width: 310.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                const SizedBox(height: 10.0),
                InkWell(
                  child: Container(
                    width: 310.0,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Continue as Guest",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/bottomnb');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
