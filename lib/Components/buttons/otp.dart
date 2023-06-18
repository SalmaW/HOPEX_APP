import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 47,
      child: TextField(
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
          hintText: "0",
          hintStyle: TextStyle(color: Colors.black12),
         border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: Color(0xff1DB954),
            ),
          ),
        ),
      ),
    );
  }
}
