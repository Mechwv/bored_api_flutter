import 'package:flutter/material.dart';

Widget FormInputText(String hintText, TextEditingController controller) {
  return  Expanded(
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      // validator: (String? value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter some text';
      //   }
      //   return null;
      // },
    ),
  );
}