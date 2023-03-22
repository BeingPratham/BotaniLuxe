import 'package:client/screens/profile_items.dart';
import 'package:client/widgets/smalltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 60,
                ),
                SizedBox(height: 20),
                Text(
                  'Pratham Upadhyay',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
                // Text(
                //   '0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65',
                //   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                // ),
                SmallText(text: "0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65"),
                SizedBox(height: 25),
                ProfileItems()
              ],
            ),
          )
        ],
      ),
    );
  }
}
