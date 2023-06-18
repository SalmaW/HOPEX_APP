import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hopex/config/app_colors.dart';
import 'package:hopex/config/app_images.dart';
import 'package:hopex/hopex_theme.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../Components/buttons/ConfirmButton.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class WelcomeScreenOTP extends StatefulWidget {
  const WelcomeScreenOTP({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenOTP> createState() => _WelcomeScreenOTPState();
}

class _WelcomeScreenOTPState extends State<WelcomeScreenOTP> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    Size size = MediaQuery.of(context).size;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColor.NoneActive;
      }
      return AppColor.APrimaryColor;
    }

    return Scaffold(
      body: SingleChildScrollView(
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
                AppImages.ellipse_otp,
                width: size.width,
              ),
            ),
            Positioned(
              top: size.height * 0,
              left: size.height * 0,
              child: Image.asset(
                AppImages.OTP,
                width: size.width,
              ),
            ),
            Positioned(
              top: size.height * 0.39,
              left: size.width * 0.14,
              child: const Text(
                'Phone Verification',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 33,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.46,
              left: size.width * 0.26,
              child: const Text(
                'Enter the OTP sent to your\n        Phone number',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 17,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: size.width * 0.07,
                          child: TextFormField(
                            style: HopexTheme.lightTextTheme.headline3,
                            onChanged: (value) {
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(hintText: '*'),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.009),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'new user?',
                        style:
                        TextStyle(fontSize: 16, color: AppColor.NoneActive),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: AppColor.APrimaryColor,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Create Account',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.12),
                  Row(
                    children: [
                      ConfirmButton(
                        text: 'Resend',
                        press: () {},
                        color: AppColor.APrimaryColorBG,
                        textColor: AppColor.APrimaryColor,
                      ),
                      ConfirmButton(
                        text: 'Confirm',
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.009),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
