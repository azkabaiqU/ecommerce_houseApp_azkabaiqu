part of '../page.dart';




class AllPage extends StatelessWidget {
  const AllPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allItems = [
      ...LandedHousePages().landedHousePages,
      ...ApartementPage().apartementhouse,
    ];

    allItems.shuffle(Random());

      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 0.5,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: allItems.length,
        itemBuilder: (BuildContext content, int index) {
          final item = allItems[index];
          return GestureDetector(
            onTap: () {
              // Saat card diklik, navigasi ke halaman detail dengan data card
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContentDetail(
                    title: item['title'], // Mengirimkan data yang dibutuhkan
                    locate: item['locate'],
                    tag: item['tag'],
                    bigImg: item['image'],
                    price: item['price'],
                  ),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.cover,
                        height: 250,
                        width: double.infinity,),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: AppColor.bgWarm
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  SvgPicture.string(floor, width: 20, ),
                                  SizedBox(width: 3,),
                                  Text(item['floor'] + 'Floor', style: TextStyle( fontSize: 12, color: AppColor.textBlack),),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.string(mxm, width: 20,),
                                  SizedBox(width: 3,),
                                  Text(item['mxm'], style: TextStyle(fontSize: 12, color: AppColor.textBlack),),
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
                    item['tag'],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: AppColor.textBlack,
                    ),
                  ),
                ),
                Text(
                  item['price'],
                  style: const TextStyle(
                    color: AppColor.textBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Flexible( // Menggunakan Flexible untuk menghindari overflow
                  child: Text(
                    item['title'],
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                      color: AppColor.textBlack,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  item['locate'],
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColor.textGray,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
}


class LandedHousePages extends StatelessWidget {
  const LandedHousePages({super.key});

  final List <Map<String, dynamic>> landedHousePages = const [
    {
      'id': '1',
      'image': 'assets/img/landedhouse1.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$9.033',
      'title': 'miss. Van Gogh',
      'locate': 'Jl. Dept ',
      'floor': '1',
      'mxm': '9mx2m',

    },
    {
      'id': '2',
      'image': 'assets/img/landedhouse2.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$23.555',
      'title': 'Vivi Viole',
      'locate': 'Jl. Dark red ',
      'floor': '1',
      'mxm': '43mx51m',
    },
    {
      'id': '3',
      'image': 'assets/img/landedhouse3.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$4.123.231',
      'title': 'mr.Dummy Gum',
      'locate': 'Jl. September',
      'floor': '1',
      'mxm': '1mx2m',
    },
    {
      'id': '4',
      'image': 'assets/img/landedhouse4.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$3.234.234',
      'title': 'Say Yes To Heaven ',
      'locate': 'Jl. Lana Dey Rei ',
      'floor': '1',
      'mxm': '7mx7m',
    },
    {
      'id': '5',
      'image': 'assets/img/landedhouse5.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$3.234.234',
      'title': 'Happy',
      'locate': 'Jl. Skinny',
      'floor': '1',
      'mxm': '7mx7m',
    },
    {
      'id': '6',
      'image': 'assets/img/landedhouse6.jpg',
      'tag': '   LandedHouse   ',
      'price': '\$3.234.234',
      'title': '11 gio 11 phut',
      'locate': 'Jl.  MiiNa, RIN9 ',
      'floor': '1',
      'mxm': '7mx7m',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: landedHousePages.length,
      itemBuilder: (BuildContext content, int index) {
        final item = landedHousePages[index];
        return GestureDetector(
          onTap: () {
            // Saat card diklik, navigasi ke halaman detail dengan data card
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContentDetail(
                  title: item['title'], // Mengirimkan data yang dibutuhkan
                  locate: item['locate'],
                  tag: item['tag'],
                  bigImg: item['image'],
                  price: item['price'],
                ),
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: AppColor.bgWarm
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                SvgPicture.string(floor, width: 20, ),
                                SizedBox(width: 3,),
                                Text(item['floor'] + 'Floor', style: TextStyle( fontSize: 12, color: AppColor.textBlack),),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.string(mxm, width: 20,),
                                SizedBox(width: 3,),
                                Text(item['mxm'], style: TextStyle(fontSize: 12, color: AppColor.textBlack),),
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
                  item['tag'],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: AppColor.textBlack,
                  ),
                ),
              ),
              Text(
                item['price'],
                style: const TextStyle(
                  color: AppColor.textBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Flexible( // Menggunakan Flexible untuk menghindari overflow
                child: Text(
                  item['title'],
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColor.textBlack,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                item['locate'],
                softWrap: true,
                style: const TextStyle(
                  color: AppColor.textGray,

                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      },
    );
  }}

class ApartementPage extends StatelessWidget {
  const ApartementPage({super.key});

  final List <Map<String, dynamic>> apartementhouse = const [
    {
      'id': '7',
      'image': 'assets/img/apartement1.jpg',
      'tag': '   Apartement   ',
      'price': '\$9.033',
      'title': 'Aaron Lim',
      'locate': 'Jl. 2 + 2 = 4 ',
      'floor': '1',
      'mxm': '9mx2m',
    },
    {
      'id': '8',
      'image': 'assets/img/apartement2.jpg',
      'tag': '   Apartement   ',
      'price': '\$23.555',
      'title': 'Pak Fasetya',
      'locate': 'Jl. HeathersxEyesBlue ',
      'floor': '1',
      'mxm': '43mx51m',
    },
    {
      'id': '9',
      'image': 'assets/img/apartement3.jpg',
      'tag': '   Apartement   ',
      'price': '\$4.123.231',
      'title': 'The Cats',
      'locate': 'Jl. Put Your Hand ',
      'floor': '1',
      'mxm': '1mx2m',
    },
    {
      'id': '10',
      'image': 'assets/img/apartement4.jpg',
      'tag': '   Apartement   ',
      'price': '\$3.234.234',
      'title': 'Say Yes To Heaven ',
      'desc': 'desc',
      'locate': 'Jl. Lana Dey Rei ',
      'floor': '1',
      'mxm': '7mx7m',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: apartementhouse.length,
      itemBuilder: (BuildContext content, int index) {
        final item = apartementhouse[index];
        return GestureDetector(
          onTap: () {
            // Saat card diklik, navigasi ke halaman detail dengan data card
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContentDetail(
                  title: item['title'], // Mengirimkan data yang dibutuhkan
                  locate: item['locate'],
                  tag: item['tag'],
                  bigImg: item['image'],
                  price: item['price'],
                ),
              ),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: AppColor.bgWarm
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
          
                            Row(
                              children: [
                                SvgPicture.string(floor, width: 20, ),
                                SizedBox(width: 3,),
                                Text(item['floor'] + 'Floor', style: TextStyle( fontSize: 12, color: AppColor.textBlack),),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.string(mxm, width: 20,),
                                SizedBox(width: 3,),
                                Text(item['mxm'], style: TextStyle(fontSize: 12, color: AppColor.textBlack),),
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
                  item['tag'],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: AppColor.textBlack,
                  ),
                ),
              ),
              Text(
                item['price'],
                style: const TextStyle(
                  color: AppColor.textBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Flexible( // Menggunakan Flexible untuk menghindari overflow
                child: Text(
                  item['title'],
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                    color: AppColor.textBlack,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                item['locate'],
                softWrap: true,
                style: const TextStyle(
                  color: AppColor.textGray,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      },
    );
}}

