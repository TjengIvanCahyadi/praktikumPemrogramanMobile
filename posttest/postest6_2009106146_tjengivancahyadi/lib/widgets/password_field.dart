import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest6_2009106146_tjengivancahyadi/getx_controller/hide_controller.dart';
import 'package:postest6_2009106146_tjengivancahyadi/utils/AppColors.dart';

class CPasswordField extends StatelessWidget {
  final String text;
  CPasswordField({
    Key? key,
    required this.text,
  }) : super(key: key);

  final HideController hideCtrl = Get.put(HideController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      child: TextField(
        obscureText: hideCtrl.hide.value,
        decoration: InputDecoration(
          fillColor: AppColors.secondaryColor,
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: hideCtrl.hide.value == true
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: hideCtrl.hidden,
          ),
          border: OutlineInputBorder(),
          hintText: text,
        ),
      ),
    );
  }
}
