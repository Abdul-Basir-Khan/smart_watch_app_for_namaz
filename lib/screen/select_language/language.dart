import 'dart:async';

import 'package:flutter/material.dart';
import 'package:namaz_app/screen/home_screen/home_screen.dart';
import 'package:namaz_app/screen/list_and_model/list_and_model.dart';
import 'package:namaz_app/theme/app_text_styles.dart';


class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width*1,
       height: MediaQuery.sizeOf(context).height*1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xff1E5648),
              Color(0xFF1E4957)],
          ),
        ),

        child: ListView(
        children: [
            Text(
              'Select Language',
              textAlign: TextAlign.center,
              style: AppTextStyles.boldStyle.copyWith( color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,)
            ),
            const SizedBox(height: 10,),
          const Divider(thickness: 1,color: Color(0xf80FFFFFF),height: 1,),
            const SizedBox(height: 10,),
            ...List.generate(languageList.length, (index)=> GestureDetector(
              onTap: (){
                setState(() {
                  _currentIndex=index;
                  Timer(
                    const Duration(seconds: 2),()  => Navigator.push(context, MaterialPageRoute(builder:
                      (context) =>
                  const HomeScreen()
                  ))
                  );
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        languageList[index],
                        textAlign: TextAlign.center,
                        style:AppTextStyles.boldStyle.copyWith(   color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,)
                      ),
                      const SizedBox(width: 10,),
                      _currentIndex==index?const CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0xf20FFFFFF),
                        child: Icon(Icons.done,color: Colors.white,size: 15,),):const SizedBox(width: 10,)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(thickness: 1,color: Color(0xf80FFFFFF),height: 1,),
                  const SizedBox(height: 10,),

              ],),
            ))




          ],
        ),
      ),
    );
  }
}
