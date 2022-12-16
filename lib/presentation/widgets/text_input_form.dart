import 'package:flutter/material.dart';

Widget TextInputForm(String text, String hintText, Widget inputWidget) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: Text(hintText,
                style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey)),
          )
        ],
      ),
      Row(
        children: [
          Text(text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(
            width: 10,
          ),
          inputWidget
        ],
      ),
      const Divider(
        height: 10,
      ),
    ],
  );
}