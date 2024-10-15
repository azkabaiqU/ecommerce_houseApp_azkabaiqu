import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/item_model.dart';
import '../../widgets/header_widget.dart';

import '../../preference/preference.dart';
import '../../widgets/searching_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  final List<Item> favorite = const [

    Item(
      image: 'assets/img/landedhouse4.jpg',
      tag: '   Landed House   ',
      price: '\$3.234.234',
      title: 'Say Yes To Heaven House ',
      locate: 'Jl. Lana Dey Rei ',
      floor: '9',
      mxm: '4mx20m',
    ),
    Item(
      image: 'assets/img/landedhouse5.jpg',
      tag: '   Landed House   ',
      price: '\$3.234.234',
      title: 'Happy',
      locate: 'Jl. Skinny ',
      floor: '2',
      mxm: '2mx1m',
    ),
    Item(
      image: 'assets/img/landedhouse6.jpg',
      tag: '   Landed House   ',
      price: '\$3.234.234',
      title: '11 gio 11 phut ',
      locate: 'Jl.  MiiNa, RIN9, DREAMeR  ',
      floor: '5',
      mxm: '25mx38m',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderSections(),
              const Text(
                'Favorite',
                style: TextStyle(fontSize: 30, color: AppColor.textBlack),
              ),
              const SearchingSections(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 0.5,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: favorite.length,
            itemBuilder: (BuildContext content, int index) {
              final item = favorite[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                          height: 250,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              color: AppColor.bgWarm),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.string(
                                      floor,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      item.floor + 'Floor',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.textBlack),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.string(
                                      mxm,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      item.mxm,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.textBlack),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: AppColor.bgWarm,
                    child: Text(
                      item.tag,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: AppColor.textBlack,
                      ),
                    ),
                  ),
                  Text(
                    item.price,
                    style: const TextStyle(
                      color: AppColor.textBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Flexible(
                    // Menggunakan Flexible untuk menghindari overflow
                    child: Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1, // Batasi menjadi satu baris
                      style: const TextStyle(
                        color: AppColor.textBlack,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    item.locate,
                    style: const TextStyle(
                      color: AppColor.textGray,
                      fontSize: 12,
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
