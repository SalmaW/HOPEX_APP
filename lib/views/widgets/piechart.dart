// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hopex/pie-chart-sec.dart';
//
// class FlChart extends StatefulWidget {
//   const FlChart({Key? key}) : super(key: key);
//
//   @override
//   State<FlChart> createState() => _FlChartState();
// }
//
// class _FlChartState extends State<FlChart> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Color(0xff58676a),
//           ),
//           height: 150,
//           width: 400,
//           child: PieChart(PieChartData(
//             borderData: FlBorderData(show: false),
//             centerSpaceColor: Colors.transparent,
//             sectionsSpace: 0,
//             centerSpaceRadius: 50,
//             startDegreeOffset: 90,
//             sections: getsections(),
//           )),
//         ),
//       ],
//     );
//   }
//
//   List<Data> getchartData() {
//     final List<Data> chartData = [
//       Data('achivements', 50),
//       Data('unachivments', 50),
//     ];
//     return chartData;
//   }
// }
//
// class Data {
//   Data(this.continent, this.gdp);
//
//   final continent;
//   final gdp;
// }
