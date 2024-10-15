import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../preference/preference.dart';
import '../../../widgets/appbar_button.dart';

class ContentDetail extends StatelessWidget {
  final String title;
  final String locate;
  final String tag;
  final String bigImg;
  final String price;

  const ContentDetail(
      {super.key,
        required this.title,
        required this.locate,
        required this.tag,
        required this.bigImg,
        required this.price
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children:[ Column(
          children: [
            AppButtonBack(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children:[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(bigImg,
                          height: 300, fit: BoxFit.cover, width: double.infinity,  )
                      ),
                      Positioned(
                        bottom: 0,
                          right: 0,
                          child:
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColor.bgWarm,
                              borderRadius: BorderRadius.circular(7)
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                    child: Image.asset('assets/img/img-bedroom.jpg', width: 50, height: 50,fit: BoxFit.cover,)
                                ),
                                SizedBox(width: 4,),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset('assets/img/img-bathroom.jpg', width: 50, height: 50,fit: BoxFit.cover,)
                                ),
                              ],
                            ),
                          ),
                      ),
                    ]
                  ),
                  SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(price, style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColor.textBlack,
                          ),),
                          Text(title, style: const TextStyle(
                            fontSize: 16,
                            color: AppColor.textBlack,
                          ),),
                          Text(locate, style: const TextStyle(
                            fontSize: 14,
                            color: AppColor.textGray,
                          ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            color: AppColor.bgWarm,
                            child:  Text(
                              tag,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: AppColor.textBlack,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: AppColor.bgBlack
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    // Aksi yang dilakukan saat button ditekan
                                  },
                                  child:
                                  Center(child: Text('Chat the Owner', style: TextStyle(
                                      color: AppColor.textWhite,
                                    fontSize: 14,
                                  ),)) ,
                                  ),
                                ),
                              SizedBox(width: 4,),
                              Container(
                                height: 35,
                                padding: EdgeInsets.symmetric(horizontal: 10,),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: AppColor.bgWarm
                                ),
                                child: SvgPicture.string(favorite) ,

                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 35,),
                  const Text('About The house',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
                  const SizedBox(height: 7,),
                  const Text(
                    'Rumah di daerah dingin dengan tempat stagegis dekat dengan indomaret, kopi kenangan, jakarta, bandung, vietnam, malaysia (rumah doraemon) dan halaman luas yang megah karena dulu di tempati oleh raja adudu.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25,),
                  const Text(
                    'Detail',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.string(floorv2, width: 25,),
                              SizedBox(width: 10,),
                              Text('2 Floor')
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SvgPicture.string(mxm, width: 25,),
                              SizedBox(width: 10,),
                              Text('10m x 23m')
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SvgPicture.string(bathroom, width: 25,),
                              SizedBox(width: 10,),
                              Text('4 bathroom'),
                            ],
                          ),

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.string(bedroom, width: 25,),
                              SizedBox(width: 10,),
                              Text('2 Floor')
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SvgPicture.string(garage, width: 25,),
                              SizedBox(width: 10,),
                              Text('10m x 23m')
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              SvgPicture.string(garden, width: 25,),
                              SizedBox(width: 10,),
                              Text('1 Garden (4m x 9m)'),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  const Text(
                    'Documentation',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10,),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/img/img-garden.jpg',
                            fit: BoxFit.cover,
                            width: 300,
                            height: 200,
                          ),
                    ),
                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/img/img-bathroom.jpg',
                        fit: BoxFit.cover,
                        width: 300,
                        height: 200,
                      ),
                    ),
                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/img/img-bedroom.jpg',
                        fit: BoxFit.cover,
                        width: 300,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ],
      ),

    );
  }
}
