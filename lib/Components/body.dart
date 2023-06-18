import 'package:flutter/material.dart';
import 'package:hopex/config/app_colors.dart';
import 'package:hopex/config/app_images.dart';
import 'package:hopex/Components/buttons/mainButton.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
// body of welcome screen
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                AppImages.handsBG,
                fit: BoxFit.cover,
                width: size.width,
                height: size.height,
              ),
            ),
            Positioned(
              top: size.height * 0,
              left: size.height * 0,
              child: Image.asset(
                AppImages.ellipse,
                width: size.width,
              ),
            ),
            Positioned(
                top: size.height * 0.08,
                left: size.width * 0.1,
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),),
            Positioned(
                top: size.height * 0.14,
                left: size.width * 0.1,
                child: Text(
                  'Enter your Phone number to login \nto your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                  ),
                ),),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FadeInDown(),
                  MainButton(text: 'LOG IN', press: (){},),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
