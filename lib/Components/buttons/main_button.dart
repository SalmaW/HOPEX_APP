import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/app_colors.dart';

class MainButton extends StatelessWidget {
  IconData? icon;
  var title;
  Color color;

  MainButton({this.icon, this.title, this.color = AppColor.APrimaryColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          minimumSize: const Size(250, 50),
          onPrimary: color,
          // backgroundColor: color,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'font',
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
