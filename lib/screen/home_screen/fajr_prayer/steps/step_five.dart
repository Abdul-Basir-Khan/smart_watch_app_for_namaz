import 'dart:async';

import 'package:flutter/material.dart';
import 'package:namaz_app/screen/home_screen/fajr_prayer/steps/step_six.dart';
import 'package:namaz_app/theme/app_text_styles.dart';
import 'package:radial_progress/radial_progress.dart';

class StepFive extends StatefulWidget {
  const StepFive({super.key});

  @override
  State<StepFive> createState() => _StepFiveState();
}

class _StepFiveState extends State<StepFive> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const StepSix()
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
              percent: 0.4,
              diameter: 340,
              enableAnimation:true,
              animationDuration: Duration.zero,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                    CircleAvatar(backgroundColor: const Color(0xf20FFFFFF),child: Image.asset(
                        color: Colors.white,
                        height: 20,
                        width: 20,
                        'assets/images/Volume Up.png'),),
                    const SizedBox(height: 5,),
                    const Spacer(),

                    Text(
                        '3x\nSubhana Rabbiyal Ala',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.boldStyle.copyWith( color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,)
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          )
      ),
    );

  }

}

