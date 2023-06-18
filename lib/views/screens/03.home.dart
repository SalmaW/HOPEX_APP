import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/d-chart.dart';
import '../widgets/scroll.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:
        Container(
          child: Image.asset("assets/images/ellipse.png"),
        ),
        title: Text(
          "USER2001",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications_none,color: Colors.black,
                size: 30,))
          // Container(
          //   child: Image.asset("assets/images/icons/machine.png"),
          // ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/back.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                //FlChart(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff58676a),
                  ),
                  height: 130,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Keep it up ",style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),

                            Text("for new achievement ! ",style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            )),

                            SizedBox(height: 30,),

                            Text("Your balance :  ",style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            )),
                          ],
                        ),
                        Dchart(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 200,
                  width: 400,
                  child: Text(
                    "advertisement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //height: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ScrollW(),
            ]),
          ),
        ],
      ),
    );
  }
}
