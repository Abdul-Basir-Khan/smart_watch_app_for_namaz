import 'dart:async';

import 'package:flutter/material.dart';
import 'package:namaz_app/screen/home_screen/fajr_prayer/steps/step_eleven.dart';
import 'package:radial_progress/radial_progress.dart';

class StepTen extends StatefulWidget {
  const StepTen({super.key});

  @override
  State<StepTen> createState() => _StepTenState();
}

class _StepTenState extends State<StepTen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const StepEleven()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.sizeOf(context).width * 1,
          height: MediaQuery.sizeOf(context).height * 1,
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xff1E5648),
                Color(0xFF1E4957)],
            ),
          ),
          child:
          Center(
            child: RadialProgressWidget(
              percent: 0.9,
              diameter: 340,
              animationDuration: Duration.zero,
              enableAnimation:true,
              margin: const EdgeInsets.all(5),
              bgLineColor: const Color(0xf20FFFFFF),
              progressLineWidth: 5,
              progressLineColors: const [
                Colors.white
              ],
              startAngle: StartAngle.top,
              centerChild:Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    CircleAvatar(backgroundColor: const Color(0xf20FFFFFF),child: Image.asset(
                        color: Colors.white,
                        height: 20,
                        width: 20,
                        'assets/images/Volume Up.png'),),
                    const SizedBox(height: 5,),
                    const Expanded(child: Image(image: AssetImage("assets/images/5 Step- Sujjud (2).gif")))
                , const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          )
      ),
    );

  }

}

