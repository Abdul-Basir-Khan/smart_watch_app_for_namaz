import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:namaz_app/screen/home_screen/set_alaram/set_time.dart';
import 'package:namaz_app/screen/list_and_model/list_and_model.dart';

import '../../../theme/app_text_styles.dart';

class SetAlaram extends StatefulWidget {
  const SetAlaram({super.key});

  @override
  State<SetAlaram> createState() => _SetAlaramState();
}

class _SetAlaramState extends State<SetAlaram> {
  bool status = false;

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
            colors: [Color(0xff1E5648), Color(0xFF1E4957)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                   Text(
                    'Set Alarm',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.boldStyle.copyWith(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,)
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  ...List.generate(
                      alarmData.length,
                      (index) => Container(
                            width: double.infinity,
                            height: 55,
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: ShapeDecoration(
                              color: const Color(0xF200E0E0E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.cover,
                                    image: AssetImage(alarmData[index].icon)),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(alarmData[index].title,
                                          style:
                                              AppTextStyles.boldStyle.copyWith(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(alarmData[index].subtitle,
                                          style:
                                              AppTextStyles.boldStyle.copyWith(
                                            color: const Color(0xFFABADB4),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FlutterSwitch(
                                          width: 31.0,
                                          height: 18.0,
                                          inactiveToggleColor:
                                              const Color(0xFFFFFFFF),
                                          inactiveColor:
                                              const Color(0xf20FFFFFF),
                                          activeToggleColor:
                                              const Color(0xFF1B4440),
                                          activeColor: Colors.white,
                                          inactiveText: '',
                                          activeText: '',
                                          toggleSize: 14.0,
                                          value: status,
                                          borderRadius: 30.0,
                                          showOnOff: false,
                                          onToggle: (v) {
                                            setState(() {
                                              status = v;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                       Text(
                                          'Everyday',
                                          textAlign: TextAlign.right,
                                          style: AppTextStyles.boldStyle.copyWith(color: Color(0xFFABADB4),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,)
                                        )
                                      ],
                                    );
                                  },
                                )
                              ],
                            ),
                          )),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SetTime()));
                    },
                    child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xf20FFFFFF),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
