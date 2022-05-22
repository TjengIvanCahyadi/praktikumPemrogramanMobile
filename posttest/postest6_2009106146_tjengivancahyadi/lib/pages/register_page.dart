import 'package:flutter/material.dart';
import 'package:postest6_2009106146_tjengivancahyadi/utils/AppColors.dart';
import 'package:postest6_2009106146_tjengivancahyadi/widgets/password_field.dart';
import 'package:postest6_2009106146_tjengivancahyadi/widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              // register text
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 40.0,
                  color: AppColors.secondaryColor,
                  fontFamily: 'Poppins',
                ),
              ),

              // jarak
              SizedBox(height: 10.0),

              // nama lengkap input box
              CTextField(icon: Icons.people_alt_outlined, text: "Nama Lengkap"),

              // alamat lengkap input box
              CTextField(
                  icon: Icons.people_alt_outlined, text: "Alamat Lengkap"),

              // nomor telepon input box
              CTextField(
                  icon: Icons.people_alt_outlined, text: "Nomor Telepon"),

              // username input box
              CTextField(icon: Icons.people_alt_outlined, text: "Username"),

              // password input box
              CPasswordField(text: "Password"),

              // confirmation password input box
              CPasswordField(text: "Confirmation Password"),

              // jarak
              SizedBox(height: 10.0),

              // tombol register
              InkWell(
                child: Container(
                  width: 310.0,
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.accentColor,
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  final mySnackBar = SnackBar(
                    content: Text(
                      "Register Page",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14.0),
                    ),
                    duration: Duration(seconds: 3),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
