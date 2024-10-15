
import 'package:flutter/material.dart';
import '../navigator/main_page.dart';
import '../preference/preference.dart';
import '../widgets/appbar_button.dart';

class LoginPage extends StatelessWidget {
  const  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            children: [
              Column(
                children: [
                  const AppButtonBack(),
                  Image.asset('assets/img/ilustration.png',height: 230,),
                  const Text('HELL O!\nWellcome Back' ,textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text('Email Address', style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColor.bgWarm, // Warna background
                      borderRadius: BorderRadius.circular(7),),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'SeoAhYi@gmail.com',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xffAAAAAA),)
                      ),),
                  ),

                  SizedBox(height: 20,),
                  Text('Your Password', style: TextStyle(fontSize: 18),),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: AppColor.bgWarm, // Warna background
                      borderRadius: BorderRadius.circular(7),),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: '***************',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xffAAAAAA),)
                      ),),
                  ),
                  SizedBox(height: 70,),

                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child:
                          Container(
                            width: 367,
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColor.bgBlack
                            ),
                            child: const Center(child: Text('Get Started', style: TextStyle(
                              color: AppColor.textWhite,
                              fontSize: 18,
                            ),)),
                          ) ,
                        ),
                        SizedBox(height: 7,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              child:
                              Container(
                                width: 180,
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColor.bgWarm
                                ),
                                child: const Center(child: Text('Google Account', style: TextStyle(
                                  color: AppColor.textBlack,
                                  fontSize: 14,
                                ),)),
                              ) ,
                            ),
                            SizedBox(width: 7,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              child:
                              Container(
                                width: 180,
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColor.bgWarm
                                ),
                                child: const Center(child: Text('Sign Up', style: TextStyle(
                                  color: AppColor.textBlack,
                                  fontSize: 14,
                                ),)),
                              ) ,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child:
                          Container(
                            width: 367,
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                            child: const Center(child: Text('i Dont Want Login or Sign Up, Be Guest Now!', style: TextStyle(
                              color: AppColor.textGray,
                              fontSize: 14,
                            ),)),
                          ) ,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ])



    );
  }
}
