import 'package:flutter/material.dart';
class greeting extends StatelessWidget {
  final String name;
  final String phone;
  greeting({required this.name, required this.phone});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 219, 215, 215),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.longestSide * .21,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Hey",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    )),
                SizedBox(width: 3),
                Icon(
                  Icons.back_hand,
                  color: Color.fromARGB(255, 223, 168, 87),
                ),
                SizedBox(width: 3),
                Text(
                  "${name}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 30),
                Text("+91 ${phone}",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    )),
              ],
            )
          ],
        ));
  }
}
