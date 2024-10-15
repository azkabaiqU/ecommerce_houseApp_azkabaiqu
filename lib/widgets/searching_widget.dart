import 'package:flutter/material.dart';
import '../preference/preference.dart';

class SearchingSections extends StatelessWidget {
  const SearchingSections({super.key,});
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColor.bgWarm, // Warna background
              borderRadius: BorderRadius.circular(7),),
            child: const TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'Searching...',
                  border: InputBorder.none,

                  hintStyle: TextStyle(
                    color: Color(0xffAAAAAA),)
              ),),
          ),
          //   ss
        ],
      ),
    );
  }
}