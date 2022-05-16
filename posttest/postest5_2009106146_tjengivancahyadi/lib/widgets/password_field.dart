import 'package:flutter/material.dart';
import 'package:postest5_2009106146_tjengivancahyadi/utils/AppColors.dart';

class CPasswordField extends StatefulWidget {
  final String text;
  const CPasswordField({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<CPasswordField> createState() => _CPasswordFieldState();
}

class _CPasswordFieldState extends State<CPasswordField> {
  bool hide = true;
  // final ourController = TextEditingController();

  // String _returnLatestValue() {
  //   return ourController.text;
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   ourController.addListener(_returnLatestValue);
  // }

  // @override
  // void dispose() {
  //   ourController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      child: TextField(
        // controller: ourController,
        obscureText: hide,
        decoration: InputDecoration(
          fillColor: AppColors.secondaryColor,
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: hide == true
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: () {
              setState(() {
                hide = !hide;
              });
            },
          ),
          border: OutlineInputBorder(),
          hintText: this.widget.text,
        ),
      ),
    );
  }
}
