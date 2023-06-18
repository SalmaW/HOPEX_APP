import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(CupertinoIcons.search,color: Colors.grey,),
            filled: true,
            fillColor: Colors.white,
            hintText: "SEARCH",
            hintStyle: Theme.of(context).
            textTheme.
            bodySmall!.copyWith(color: Colors.grey.shade400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,

            ),
          ),
        ));
  }
}
