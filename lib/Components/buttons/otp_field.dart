import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'otp.dart';

class OtpField extends StatelessWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Otp(),
              Otp(),
              Otp(),
              Otp(),
              Otp(),


              //       SizedBox(
        //         height: 45,
        //         width: 47,
        //         child: TextField(
        //           style: Theme.of(context).textTheme.headline6,
        //           keyboardType: TextInputType.number,
        //           textAlign: TextAlign.center,
        //           inputFormatters: [
        //             LengthLimitingTextInputFormatter(1),
        //             FilteringTextInputFormatter.digitsOnly,
        //           ],
        //           onChanged: (value) {
        //             if (value.length == 1) {
        //               FocusScope.of(context).nextFocus();
        //             }
        //           },
        //           decoration: const InputDecoration(
        //             hintText: "0",
        //             hintStyle: TextStyle(color: Colors.black12),
        //             enabledBorder: OutlineInputBorder(
        //               borderSide:BorderSide(
        //                 color: Color(0xff1DB954),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //
        //       SizedBox(
        //         height: 45,
        //         width: 47,
        //         child: TextField(
        //           decoration: const InputDecoration(
        //             hintText: "0",
        //             hintStyle: TextStyle(color: Colors.black12),
        //             enabledBorder: OutlineInputBorder(
        //               borderSide:BorderSide(
        //                 color: Color(0xff1DB954),
        //               ),
        //             ),
        //           ),
        //           style: Theme.of(context).textTheme.headline6,
        //           keyboardType: TextInputType.number,
        //           textAlign: TextAlign.center,
        //           inputFormatters: [
        //             LengthLimitingTextInputFormatter(1),
        //             FilteringTextInputFormatter.digitsOnly,
        //           ],
        //           onChanged: (value) {
        //             if (value.length == 1) {
        //               FocusScope.of(context).nextFocus();
        //             }
        //           },
        //         ),
        //       ),
        //
        //       SizedBox(
        //         height: 45,
        //         width: 47,
        //         child: TextField(
        //           decoration: const InputDecoration(
        //             hintText: "0",
        //             hintStyle: TextStyle(color: Colors.black12),
        //               enabledBorder: OutlineInputBorder(
        //                 borderSide: BorderSide(
        //                     color: Color(0xff1DB954)),
        //               )
        //           ),
        //           style: Theme.of(context).textTheme.headline6,
        //           keyboardType: TextInputType.number,
        //           textAlign: TextAlign.center,
        //           inputFormatters: [
        //             LengthLimitingTextInputFormatter(1),
        //             FilteringTextInputFormatter.digitsOnly,
        //           ],
        //           onChanged: (value) {
        //             if (value.length == 1) {
        //               FocusScope.of(context).nextFocus();
        //             }
        //           },
        //         ),
        //       ),
        //
        //
        //       SizedBox(
        //         height: 45,
        //         width: 47,
        //         child: TextField(
        //           decoration: const InputDecoration(
        //             hintText: "0",
        //             hintStyle: TextStyle(color: Colors.black12),
        //             enabledBorder: OutlineInputBorder(
        //               borderSide:BorderSide(
        //                 color: Color(0xff1DB954),
        //               ),
        //             ),
        //           ),
        //           style: Theme.of(context).textTheme.headline6,
        //           keyboardType: TextInputType.number,
        //           textAlign: TextAlign.center,
        //           inputFormatters: [
        //             LengthLimitingTextInputFormatter(1),
        //             FilteringTextInputFormatter.digitsOnly,
        //           ],
        //           onChanged: (value) {
        //             if (value.length == 1) {
        //               FocusScope.of(context).nextFocus();
        //             }
        //           },
        //         ),
        //       ),
        //
        //       SizedBox(
        //         height: 45,
        //         width: 47,
        //         child: TextField(
        //           decoration: const InputDecoration(
        //             hintText: "0",
        //             hintStyle: TextStyle(color: Colors.black12),
        //             enabledBorder: OutlineInputBorder(
        //               borderSide:BorderSide(
        //                 color: Color(0xff1DB954),
        //               ),
        //             ),
        //           ),
        //           style: Theme.of(context).textTheme.headline6,
        //           keyboardType: TextInputType.number,
        //           textAlign: TextAlign.center,
        //           inputFormatters: [
        //             LengthLimitingTextInputFormatter(1),
        //             FilteringTextInputFormatter.digitsOnly,
        //           ],
        //           onChanged: (value) {
        //             if (value.length == 1) {
        //               FocusScope.of(context).nextFocus();
        //             }
        //           },
        //         ),
        //       ),
            ],
          ),
        ));
  }
}
