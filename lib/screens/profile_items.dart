import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileItems extends StatefulWidget {
  const ProfileItems({super.key});

  @override
  State<ProfileItems> createState() => _ProfileItemsState();
}

class _ProfileItemsState extends State<ProfileItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_bag,
                      size: 25,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "My Orders",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.badge_rounded,
                      size: 25,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "My Badges",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.yard,
                      size: 25,
                    ),
                    SizedBox(width: 15),
                    Badge(
                      position: BadgePosition.topEnd(top: -8, end: -35),
                      badgeStyle: BadgeStyle(
                          shape: BadgeShape.square,
                          badgeColor: Colors.amber,
                          padding: EdgeInsets.all(0),
                          borderSide:
                              BorderSide(color: Colors.grey.shade300, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      badgeContent: Text(
                        " Beta ",
                        style: TextStyle(fontSize: 11),
                      ),
                      child: Text("NFT's"),
                    ),
                    // Text(
                    //   "NFT's",
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                    // ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.wallet,
                      size: 25,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Connect Wallet",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ).copyWith(
              bottom: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout_rounded,
                      size: 25,
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
