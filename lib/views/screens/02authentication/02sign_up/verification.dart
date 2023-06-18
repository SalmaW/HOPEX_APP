import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Components/buttons/mainButton.dart';
import '../../../../Components/buttons/otp_field.dart';
import '../../../../config/app_colors.dart';



class VerifiScreen extends StatelessWidget {
  const VerifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),

            Image.asset("assets/images/signup/verifi.png"),

            SizedBox(height: 30,),

            OtpField(),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't you receive the OTP? ",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                )),
                InkWell(
                  onTap: (){},
                  child: Text(" Resend OTP.",style: TextStyle(
                    color: AppColor.APrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                  )),
                ),
              ],
            ),


            SizedBox(height: 30,),

            MainButton(text: "Verify",press: (){},),



          ],),
      ),
    );
  }
}
