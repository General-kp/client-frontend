import 'package:flutter/material.dart';
import 'package:frontend/widgets/bottomnavigationview.dart';
import 'package:frontend/widgets/greeting.dart';
import 'package:frontend/widgets/headingview.dart';
import 'package:frontend/widgets/optionsview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    var name = 'ashlesh shenoy';
    var phone = "6361284091";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            greeting(
              name: "$name",
              phone: '$phone',
            ),
            SizedBox(
              height: 20,
            ),
            hbutton(size: size, text: 'Account Settings'),
            SizedBox(height: 15),
            optionsbutton(
              icon: Icons.person_pin,
              size: size,
              text: 'Edit profile',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.shopping_bag_outlined,
              size: size,
              text: 'Orders',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.map_outlined,
              size: size,
              text: 'Saved Addresses',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.language,
              size: size,
              text: 'Language',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.notifications_none_outlined,
              size: size,
              text: 'Notification Settings',
            ),
            SizedBox(
              height: 25,
            ),
            hbutton(size: size, text: "Customer support"),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.title_outlined,
              size: size,
              text: 'Terms & conditions',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.question_answer_outlined,
              size: size,
              text: 'Browse FAQs',
            ),
            SizedBox(height: 7),
            optionsbutton(
              icon: Icons.phone,
              size: size,
              text: 'Contact us',
            ),
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(width: size.width * .028),
                Container(
                    alignment: Alignment.center,
                    width: size.width * .945,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Log out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )))),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: size.width * .945,
        height: 80,
        child: Row(
          children: [
            SizedBox(width: size.width * .04),
            bbutton(
              icon: Icons.widgets_outlined,
              text: 'home',
            ),
            SizedBox(width: size.width * .09),
            bbutton(
              icon: Icons.table_rows,
              text: 'categories',
            ),
            SizedBox(width: size.width * .09),
            bbutton(
              icon: Icons.person_pin,
              text: 'profile',
            ),
            SizedBox(width: size.width * .09),
            bbutton(
              icon: Icons.shopping_cart_outlined,
              text: 'Carts',
            ),
          ],
        ),
      ),
    );
  }
}
