import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class bbutton extends StatelessWidget {
  final IconData icon;
  final String text;
  bbutton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          SizedBox(height: 6),
          Icon(icon, color: Colors.black),
          SizedBox(
            height: 10,
          ),
          Text("$text",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
