import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:namaz_app/screen/home_screen/all_prayer_guide/all_prayer_guide.dart';
import 'package:namaz_app/screen/home_screen/set_alaram/set_alaram.dart';
import 'package:namaz_app/screen/home_screen/setting_screen/setting_screen.dart';
import 'package:namaz_app/screen/list_and_model/list_and_model.dart';
import 'package:namaz_app/theme/app_colors.dart';
import 'package:namaz_app/theme/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width*1,
        height: MediaQuery.sizeOf(context).height*1,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xff1E5648),
              Color(0xFF1E4957)],
          ),
        ),
        child: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("assets/images/Group 1000006021.png"),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'Asar',
                          style:AppTextStyles.boldStyle.copyWith(color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,)
                        ),


                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                            Text(
                                '05:40',
                                style: AppTextStyles.boldStyle.copyWith(color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,)
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Text(
                                  'Turkey',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.boldStyle.copyWith( color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,)
                                ),
                                const SizedBox(width: 2,),
                                const CircleAvatar(backgroundColor: AppColors.primaryWhite,radius: 2,),
                                const SizedBox(width: 2,),
                                Text(
                                  'Dec 28, 2023',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.boldStyle.copyWith(color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,)
                                ),
                              ],
                            )

                          ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xf20FFFFFF),child: Image(
                            height: 19,width: 16,
                            image: AssetImage("assets/images/Notification-3.png")) ,)
                      ],
                    ),
                 const SizedBox(height: 10,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(6, (index)=> Expanded(
                      child: Container(
                        height: 7,
                        margin: const EdgeInsets.only(right: 3),
                        decoration: ShapeDecoration(
                          gradient:index==0 || index ==1? const LinearGradient(colors: [
                            Colors.white,
                            Colors.white,
                          ]):index==2? const LinearGradient(colors: [
                            Color(0xff3BB7DE),
                            Color(0xff3BDEB4),
                          ]): const LinearGradient(colors: [
                            Color(0xff0E0E0E),
                            Color(0xff0E0E0E),
                          ]),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    )),
                  ),
                 const SizedBox(height: 20,),
                 ...List.generate(homeData.length, (index)=>    GestureDetector(
                   onTap: (){
                     setState(() {
                       _currentIndex=index;
                       _currentIndex==2?Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingScreen())): _currentIndex==0?Navigator.push(context, MaterialPageRoute(builder: (context)=> const AllPrayerGuide())):Navigator.push(context, MaterialPageRoute(builder: (context)=> const SetAlaram()));
                     });
                   },
                   child:
                   Container(
                     width: double.infinity,
                     height: 55,
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     margin: const EdgeInsets.only(bottom: 10),
                     decoration: ShapeDecoration(
                       color: const Color(0xF200E0E0E),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Image(
                             height: 20,width: 20,fit: BoxFit.cover,
                             image: AssetImage(homeData[index].icon)),
                         const SizedBox(width: 10,),
                         Text(
                           homeData[index].title,
                           style:AppTextStyles.boldStyle.copyWith(      color: Colors.white,
                             fontSize: 12,
                             fontWeight: FontWeight.w600,)
                         ),
                         const Spacer(),
                         const CircleAvatar(
                           radius: 15,
                                  backgroundColor:  Color(0xF20F5F5F5),
                           child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 10,),
                         ),


                       ],
                     ),
                   ),
                 ))

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
