import 'package:flutter/cupertino.dart';
import 'package:hopex/config/Competitions.dart';

import 'Section_header.dart';

class ScrollW extends StatelessWidget {
  const ScrollW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SectionHeader(title:"Competitions",action:""),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height* 0.20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: CompLogo.compLogo.length,
                  itemBuilder: (context , index){
                return CompLogo.compLogo[index];
              }
              )),
      ],
    );
  }
}
