import 'package:flutter/material.dart';
class hbutton extends StatelessWidget {
  var size;
  final String text;
  hbutton({required this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .94,
      child: Row(
        children: [
          SizedBox(width: size.width * .001),
          Text("$text",
              style: TextStyle(
                color: Color.fromARGB(255, 131, 122, 122),
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ))
        ],
      ),
    );
  }
}