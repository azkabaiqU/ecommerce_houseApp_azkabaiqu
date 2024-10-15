
import 'package:flutter/material.dart';

class HeaderSections extends StatefulWidget {
  const HeaderSections({
    super.key,
  });

  @override
  State<HeaderSections> createState() => _HeaderSectionsState();
}

class _HeaderSectionsState extends State<HeaderSections> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/img/setting.png', width: 25,),
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.asset('assets/img/pfp.png',
                fit: BoxFit.cover ,
                width: 45, height: 45,)),
        ],
      ),
    );
  }
}