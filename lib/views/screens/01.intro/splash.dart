import 'package:flutter/material.dart';
import 'package:hopex/config/app_images.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'on_board_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const OnBoardingScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 180.0),
              child: Image(
                image: AssetImage(AppImages.logo),
                width: 300,
              ),
            ),
            SpinKitDoubleBounce(
              color: Color(0xff3cb44c),
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
