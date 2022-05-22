import 'package:flutter/material.dart';
import 'package:postest6_2009106146_tjengivancahyadi/utils/AppColors.dart';
import 'package:postest6_2009106146_tjengivancahyadi/widgets/password_field.dart';
import 'package:postest6_2009106146_tjengivancahyadi/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // text "Login"
          Text(
            "Login",
            style: TextStyle(
              fontSize: 40.0,
              color: AppColors.secondaryColor,
              fontFamily: 'Poppins',
            ),
          ),

          // jarak
          SizedBox(height: 10.0),

          // username input box
          CTextField(icon: Icons.people_alt_outlined, text: "Username"),

          // password input box
          CPasswordField(text: "Password"),

          // text "Don't have an acc..."
          InkWell(
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Don't have an account? Register Here",
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
          ),

          // jarak
          SizedBox(height: 10.0),

          // tombol Login
          InkWell(
            child: Container(
              width: 310.0,
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.accentColor,
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
