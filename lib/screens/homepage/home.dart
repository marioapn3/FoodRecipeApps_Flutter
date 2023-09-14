// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_recipe/screens/components/food_card.dart';
import 'package:food_recipe/screens/homepage/detail_recipe.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key}); // Hapus super.key yang tidak diperlukan

  List<List<String>> foodList = [
    [
      'Mario Aprilnino',
      'assets/images/burger-terbaru.png',
      'Burger Goreng',
    ],
    [
      'Mario Aprilnino',
      'assets/images/spaghetti-terbaru.png',
      'Spaghetti Godog'
    ],
    [
      'Mario Aprilnino',
      'assets/images/pancake-terbaru.png',
      'Pancake Mantap',
    ],
    // Tambahkan sublist lain sesuai kebutuhan
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Temukan berbagai resep',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Kuliner Nusantara',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'Cari Resep',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resep Viral',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.orange),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text('Lihat Semua '),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailRecipe(),
                            ));
                      },
                      child: const FoodCard(
                        imgPath: 'assets/images/pecel.png',
                        name: 'Cara masak Pecel',
                        rating: '4.6',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const FoodCard(
                      imgPath: 'assets/images/sate.png',
                      name: 'Sate Bumbu Kacang',
                      rating: '4.2',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const FoodCard(
                      imgPath: 'assets/images/soto.png',
                      name: 'Soto khas Betawi',
                      rating: '4.3',
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resep Terbaru',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.orange),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text('Lihat Semua '),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SmallFoodCard(
                      foodName: 'Burger',
                      personName: 'Mario Aprilnino Prasetyo',
                      imgPath: 'assets/images/burger-terbaru.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: SmallFoodCard(
                      foodName: 'Spaghetti',
                      personName: 'Mario Aprilnino Prasetyo',
                      imgPath: 'assets/images/spaghetti-terbaru.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SmallFoodCard(
                      foodName: 'Pancake',
                      personName: 'Mario Aprilnino Prasetyo',
                      imgPath: 'assets/images/pancake-terbaru.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: SmallFoodCard(
                      foodName: 'Burger Goreng',
                      personName: 'Mario Aprilnino Prasetyo',
                      imgPath: 'assets/images/burger-terbaru.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
        currentIndex: 0,
        // selectedItemColor: Colors.amber[800],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        // onTap: _onItemTapped,
      ),
    );
  }
}

class CircleCreator extends StatelessWidget {
  const CircleCreator({
    super.key,
    required this.imgPath,
    required this.name,
  });
  final String imgPath;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "ubah",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class SmallFoodCard extends StatelessWidget {
  const SmallFoodCard({
    super.key,
    required this.foodName,
    required this.imgPath,
    required this.personName,
  });
  final String foodName;
  final String imgPath;
  final String personName;

  String shortenFoodName(String name) {
    if (name.split(' ').length > 3) {
      final words = name.split(' ');
      return '${words.sublist(0, 3).join(' ')}...';
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    final shortenedName = shortenFoodName(foodName);
    return SizedBox(
      width: 200,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            shortenedName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            personName,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}



// 
// Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Expanded(
                //       child: const Text(
                //         'Kreator Terpopuler',
                //         style: TextStyle(
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //     TextButton(
                //       style:
                //           TextButton.styleFrom(foregroundColor: Colors.orange),
                //       onPressed: () {},
                //       child: const Row(
                //         children: [
                //           Text('Lihat Semua '),
                //           Icon(
                //             Icons.arrow_forward,
                //             size: 16,
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                // const SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       CircleCreator(
                //         name: 'Amanda Samantha',
                //         imgPath: 'assets/images/pp-1.png',
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       CircleCreator(
                //         name: 'Mario Aprilnino',
                //         imgPath: 'assets/images/pp-2.png',
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       CircleCreator(
                //         name: 'Amanda Samantha',
                //         imgPath: 'assets/images/pp-3.png',
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       CircleCreator(
                //         name: 'Amanda Samantha',
                //         imgPath: 'assets/images/person.jpg',
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       CircleCreator(
                //         name: 'Amanda Samantha',
                //         imgPath: 'assets/images/person.jpg',
                //       ),
                //     ],
                //   ),
                // )

// 


// GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.8,
//                   crossAxisSpacing: 20,
//                 ),
//                 itemCount: foodList.length,
//                 shrinkWrap:
//                     true, // Ini penting untuk mengizinkan ListView menyesuaikan tinggi sesuai kontennya
//                 physics:
//                     NeverScrollableScrollPhysics(), // Ini akan mencegah scrolling pada GridView
//                 itemBuilder: (context, index) {
//                   // Ambil data dari sublist
//                   String name = foodList[index][0];
//                   String imgPath = foodList[index][1];
//                   String foodName = foodList[index][2];
//                   // Fungsi ini akan membangun setiap item dalam grid
//                   return SmallFoodCard(
//                     foodName: foodName,
//                     personName: name,
//                     imgPath: imgPath,
//                   );
//                 },
//               ),