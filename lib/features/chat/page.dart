import 'package:flutter/material.dart';
import '../../models/model_list.dart';
import '../../preference/preference.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/searching_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});


  final List<ListItem> list = const [

    ListItem(
      image: 'assets/img/landedhouse4.jpg',
      title: 'Say Yes To Heaven House ',
      locate: 'Jl. Lana Dey Rei ',
      notification: '5',
    ),
    ListItem(
      image: 'assets/img/landedhouse5.jpg',
      title: 'Happy',
      locate: 'Jl. Skinny ',
      notification: '2',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSections(),
          const Text(
            'Chat',
            style: TextStyle(fontSize: 30, color: AppColor.textBlack),
          ),
          SearchingSections(),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.grey,    // Warna garis
                  thickness: 0.3,       // Ketebalan garis

                );
              },
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                final item = list[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                              width: 45,
                              height: 45,
                            ),
                          ),
                          const SizedBox(width: 10),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: AppColor.textBlack,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                item.locate,
                                style: const TextStyle(fontSize: 14, color: AppColor.textBlack),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4), // Jarak di dalam lingkaran

                            decoration: const BoxDecoration(
                              color: Colors.red, // Warna lingkaran
                              shape: BoxShape.circle, // Bentuk lingkaran
                            ),
                            child:  Center( // Memusatkan teks di dalam lingkaran
                              child: Text(
                                item.notification,
                                style: const TextStyle(
                                  fontSize: 9,
                                  color: Colors.white, // Warna teks
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,)
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
