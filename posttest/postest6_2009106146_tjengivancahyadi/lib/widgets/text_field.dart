import 'package:flutter/material.dart';
import 'package:postest6_2009106146_tjengivancahyadi/utils/AppColors.dart';

class CTextField extends StatelessWidget {
  final IconData icon;
  final String text;
  const CTextField({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.secondaryColor,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
          hintText: text,
        ),
      ),
    );
  }
}
