import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../features/discover/page.dart';
import '../features/chat/page.dart';
import '../features/favorite/page.dart';


import '../preference/preference.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  IconButton buildItemNav(String assetPath, String label, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Column(
        mainAxisSize: MainAxisSize.min, // Agar Column sesuai konten
        children: [
          SvgPicture.string( // Gunakan asset jika file SVG berasal dari penyimpanan lokal
            assetPath,
            width: 20,
            height: 20,
          ),
          const SizedBox(height: 3,),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColor.textBlack,
            ),
          )
        ],
      ),
    );
  }

  // connect ke  lain di navbar
  List < Widget > pages =
  const [
    DiscoverPage(),
    FavoritePage(),
    ChatPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            height: 80,
            color: AppColor.bgWarm,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildItemNav(discover ,'Discover' , 0),
                buildItemNav(favorite ,'Favorite' , 1),
                buildItemNav(chat ,'Chat' , 2),
                // buildItemNav(profile,'Profile' , 3),
              ],
            ),
          ),
        ),
      ),


    );
  }
}

