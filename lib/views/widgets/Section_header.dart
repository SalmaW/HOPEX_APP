import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color:Colors.black,
                fontWeight: FontWeight.w500,
              fontSize: 20,
            )),

        Text(action,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black)),
      ],
    );
  }
}
