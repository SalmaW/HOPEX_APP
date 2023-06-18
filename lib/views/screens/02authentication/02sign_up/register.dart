import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Components/buttons/dropdownlist.dart';
import '../../../../Components/buttons/mainButton.dart';
import '../../../../Components/buttons/phone_field.dart';
import '../../../../Components/buttons/text_field.dart';
import '../../../../config/app_colors.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Registration",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image.asset(
                    "assets/images/signup/Regist.png",
                    height: size.height * .20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.5),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add,
                            size: 35, color: AppColor.APrimaryColor),
                      )),
                ],
              ),
              Center(
                child: Text(
                  "pick up your avatar",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FieldText(
                hint: "Name",
              ),
              SizedBox(
                height: 15,
              ),
              FieldText(
                hint: "Email",
              ),
              SizedBox(
                height: 15,
              ),
              PhoneFeild(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select your gender",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    DropList(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MainButton(
                text: "Done",
                press: (){},
              ),
              SizedBox(
                height: 25,
              ),
              Text("By clicking Done, you agree to our Terms of Services and",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              Text("that you have read ourPrivacy Policy",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ),
    );
  }
}
