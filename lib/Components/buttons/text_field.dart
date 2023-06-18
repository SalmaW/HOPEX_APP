import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {
  var hint;
  var label;

  FieldText({this.label, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          label: label,
          labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:BorderSide(
              color: Color(0xffE2E2E2),
            ),
          ),
        ),
        keyboardType: TextInputType.multiline,
      ),
    ) ;
  }
}
