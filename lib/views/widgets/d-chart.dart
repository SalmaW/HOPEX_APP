import 'package:d_chart/d_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:hopex/pie-data.dart';

class Dchart extends StatelessWidget {
  const Dchart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      // AspectRatio(
      // aspectRatio: 16 / 9,
      // child:
      Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            child: DChartPie(
              data: [
                {'domain': 'achivements', 'measure': 50},
                {'domain': 'unachivments', 'measure': 50},
              ],
              fillColor: (pieData, index) {
                switch (pieData['domain']) {
                  case 'achivements':
                    return Colors.white;
                  case 'unachivments':
                    return Color(0xff1DB954);
                }
              },
              strokeWidth: 0,
              donutWidth: 10,
              labelColor: Colors.white,
              labelPosition: PieLabelPosition.inside,
            ),
          ),
          Text("50%",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w400,
                  color: Colors.white
              ))
        ],
      ),
      //),
    );
  }
}