import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class PhoneFeild extends StatelessWidget {
  const PhoneFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:
        IntlPhoneField(
          decoration: InputDecoration(
            hintText: "Mobile Number",
           // labelText: 'Mobile Number',
            labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x77E2E2E2),
              ),
            ),
          ),
          onChanged: (phone) {
            print(phone.completeNumber);
          },
          onCountryChanged: (country) {
            print('Country changed to: ' + country.name);
          },
        ),
      ),
    );
  }
}
