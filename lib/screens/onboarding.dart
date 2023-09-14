import 'package:flutter/material.dart';
import 'package:food_recipe/screens/homepage/home.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onboarding-img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '60k+ Resep Premium',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 0, 0, 0), // Warna bayangan
                          blurRadius: 2, // Radius blur bayangan
                          offset: Offset(
                              3, 3), // Offset untuk mengatur posisi bayangan
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                'Ayo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const Text(
                'Memasak',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Temukan berbagai resep istimewa untuk masakanmu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push( 
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mulai Memasak',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              
            ]),
          ),
        ),
      ),
    );
  }
}
