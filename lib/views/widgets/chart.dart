// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class Charts extends StatefulWidget {
//   const Charts({Key? key}) : super(key: key);
//
//   @override
//   State<Charts> createState() => _ChartsState();
// }
//
// class _ChartsState extends State<Charts> {
//   late List<Datac> chartData;
//   @override
//   void initState() {
//     chartData =getchartData();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       body: SfCircularChart(series: <CircularSeries>[
//         DoughnutSeries<Datac ,String>(
//           dataSource: chartData,
//             xValueMapper: (Datac data,_)=>data.continent,
//             yValueMapper: (Datac data ,_)=>data.gdp),
//       ],),));
//   }
//   List<Datac>getchartData(){
//     final List<Datac> chartData =[
//       Datac('achivements',50),
//       Datac('unachivments',50),
//     ];
//     return chartData;
//   }
// }
//
//
// class Datac {
//   Datac(this.continent , this.gdp);
//   final continent;
//   final gdp;
//
// }