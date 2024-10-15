

import 'package:ecommerce_app_azka/auth/loginpage.dart';
import 'package:flutter/material.dart';
import '../preference/preference.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
          children:[
            Container(
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/bg-getstarted.png'),
                  fit: BoxFit.none,
                  alignment: Alignment.center,
                  scale: 1.9,),
              ),),
            Positioned(
                bottom: 0,
                child:
                Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    color: AppColor.bgWarm,
                    child:
                    Column(
                      children: [
                        Text('Need Your Dream \nHome?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColor.textBlack,

                          ),),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child:
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColor.bgBlack
                            ),
                            child: const Center(child: Text('Get Started!', style: TextStyle(
                              color: AppColor.textWhite,
                              fontSize: 18,
                            ),)),
                          ) ,
                        ),
                      ],
                    )))
          ]
      ),
    );
  }
}
