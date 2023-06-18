import 'package:flutter/material.dart';
import 'package:hopex/config/app_colors.dart';

class ConfirmButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color color, textColor;
  final VoidCallback press;// cause the elevatedButton take void function at onPressesd() and voidCallback makes it void function

  const ConfirmButton(
      {Key? key,
      this.icon,
      required this.text,
      this.color = AppColor.APrimaryColor,
      this.textColor = Colors.white,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          minimumSize: Size(size.width * 0.45, size.height * 0.05),
          primary: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Icon(
            //     icon,
            //     color: Colors.white,
            //   ),
            // ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'gilroy',
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
