import 'package:flutter/material.dart';
import 'package:postest5_2009106146_tjengivancahyadi/utils/AppColors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Page",
        style: TextStyle(
          color: AppColors.secondaryColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
