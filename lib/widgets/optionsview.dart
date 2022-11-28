import 'package:flutter/material.dart';
class optionsbutton extends StatelessWidget {
  var size;
  final String text;
  final IconData icon;
  optionsbutton({
    required this.size,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: size.width * .03),
        Container(
          width: size.width * .94,
          child: TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>profile()));
              },
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text("$text",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18,
                      ))
                ],
              )),
        ),
      ],
    );
  }
}
