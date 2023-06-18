import 'package:flutter/material.dart';
import 'package:hopex/config/app_colors.dart';
import 'package:hopex/config/app_images.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../Components/buttons/mainButton.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                AppImages.ellipse,
                width: size.width,
              ),
            ),
            Positioned(
              top: size.height * 0.08,
              left: size.width * 0.1,
              child: const Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.14,
              left: size.width * 0.1,
              child: const Text(
                'Enter your Phone number to \nlogin to your Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 19,
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.3,
              // left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: const BoxDecoration(
                      color: AppColor.APrimaryColorBG,
                    ),
                    child: IntlPhoneField(
                      initialCountryCode: 'EG',
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person_outline),
                        contentPadding: const EdgeInsets.only(bottom: 15, left: 0),
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: AppColor.APrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.07),
                  MainButton(
                    text: 'LOG IN',
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.009),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        checkColor: AppColor.APrimaryColorBG,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (bool? value){
                          setState((){
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text(
                        'Keep me logged in',
                        style:
                        TextStyle(fontSize: 16, color: AppColor.NoneActive),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
