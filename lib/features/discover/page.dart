

import 'dart:math';

import 'package:ecommerce_app_azka/features/discover/detail/content_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../preference/preference.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/searching_widget.dart';

part 'content_discover/content.dart';


class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  int selectedIndex = 0;

  final List<Map<String, String?>> categoryData = [
    {
      'name': 'All',
      'img': null
    },
    {
      'name': 'Landed House',
      'img': 'assets/img/imgLandedHouse.png'
    },
    {
      'name': 'Apartement',
      'img': 'assets/img/imgApartement.png'
    },
  ];

  List < Widget> content = const [
    AllPage(),
    LandedHousePages(),
    ApartementPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:  [
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSections(),
                Text(
                  'Discover', style: TextStyle(fontSize: 30, color: AppColor.textBlack),
                ),
                SearchingSections(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, right: 20, left: 20),
            child:
              SizedBox(
                height: 45,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    itemCount: categoryData.length,
                    itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          color: selectedIndex == index ? AppColor.bgBlack : AppColor.bgWarm,
                          borderRadius: BorderRadius.circular(7),),

                        child: Padding(
                          padding: const EdgeInsets.only( left: 6,right: 25,),
                          child: Row(
                            children: [
                              if (categoryData[index]['img'] != null)
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                                  child: Image.asset(
                                    categoryData[index]['img']!,
                                    fit: BoxFit.cover,
                                    width: 35,
                                    height: 35,
                                  ),
                                )
                              else
                                const SizedBox(width: 6, height: 0),

                              const SizedBox(width: 10,),
                               Text(categoryData[index]['name']!,
                                style: TextStyle(
                                  color: selectedIndex == index ?  AppColor.textWhite : AppColor.textBlack,
                                  fontSize: 14,
                                  fontWeight: selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                ),),
                            ],
                          ),
                        ),

                      ),
                    );},
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 5,);
                    },
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: content[selectedIndex],
          )
        ],
      );


  }
}
