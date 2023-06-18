import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropList extends StatefulWidget {
  const DropList({Key? key}) : super(key: key);

  @override
  State<DropList> createState() => _DropListState();
}

class _DropListState extends State<DropList> {
  List <String> itemsList=["Gender","Male","Female","None"];
  String? selectedItem ="Gender";


  @override
  Widget build(BuildContext context) {
    return  DropdownButton(
            value: selectedItem,
            items: itemsList
                .map((item) => DropdownMenuItem(
                value: item,
                child: Text(item,style: TextStyle(fontSize: 20))))
                .toList(),
            onChanged: (item)=> setState(()=> selectedItem =item as String? ),
    );
  }
}
