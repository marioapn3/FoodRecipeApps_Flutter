import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.imgPath,
  }) : super(key: key);

  final String name;
  final String rating;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        children: [
          SizedBox(
            width: 220.0,
            height: 150.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imgPath,
                fit: BoxFit
                    .cover, // Menggunakan BoxFit.cover untuk mengisi lebar dan tinggi Container dengan gambar
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.more_horiz,
                size: 25,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/person.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'By Farah Kuin',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
