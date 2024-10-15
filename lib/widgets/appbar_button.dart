import 'package:flutter/material.dart';

import '../preference/preference.dart';

class AppButtonBack extends StatelessWidget {
  const AppButtonBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            child: Text('◀  Go Back', style: TextStyle(color: AppColor.textBlack, fontSize: 14),),
            onPressed: () {
              Navigator.pop(context); // Aksi kembali
            },
          ),
        ],
      ),
    );
  }
}