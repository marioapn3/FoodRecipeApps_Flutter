import 'package:flutter/material.dart';

class DetailRecipe extends StatelessWidget {
  DetailRecipe({super.key});

  List langkahMasak = [
    'Potong daging ayam bentuk dadu, beri garam dan perasan jeruk lemon dan kecap manis, simpan dikulkas minimal 1 jam.',
    'Lalu tusuk-tusuk dengan tusuk sate dan lakukan hingga habis, sisihkan',
    'Haluskan semua bahan bumbu kacang, kecuali kecap, daun jeruk.',
    'Lalu masukkan kecap, air, daun jeruk dan masak dengan api kecil hingga air surut dan mengeluarkan minyak. Koreksi rasa.',
    'Siapkan bakaran/ panggangan. Lumuri sate ayam dengan bumbu kacang dan sedikit kecap manis.',
    'Bakar sate hingga matang sambil dibolak-balik.',
    'Sajikan sate ayam dengan bumbu kacang, jeruk limau, kecap manis dan lontong dan pelengkap lainnya.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.asset('assets/images/sate.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Sate Ayam Bumbu Kacang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      50), // 50 is just an example, adjust as needed
                  child: Image.asset(
                    'assets/images/person.jpg', // Replace with your image path
                    width: 50, // Set your desired width
                    height: 50, // Set your desired height
                    fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Farah Kuin'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                        Text(
                          'Semarang , Jawa Tengah',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const Divider(),
            const Text(
              'Bahan - Bahan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '2-4 Orang',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const IngridientTextBold(
              name: '500 gram dada ayam, ',
              action: 'iris panjang , kotak',
            ),
            const IngridientTextBold(
              name: '8 siung bawang merah, ',
              action: 'iris halus',
            ),
            const IngridientTextBold(
              name: 'kecap manis, ',
              action: ' ',
            ),
            const IngridientTextBold(
              name: '1 sdm ketumbar, ',
              action: '',
            ),
            const IngridientTextBold(
              name: '1 ruas laos, ',
              action: '',
            ),
            const IngridientTextBold(
              name: 'Margarin dan Kecap Manis, ',
              action: 'campur menjadi satu',
            ),
            const Divider(),
            const Text(
              'Langkah Pembuatan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              // Tambahkan Expanded untuk mengelilingi ListView.builder
              child: ListView.builder(
                shrinkWrap: true, // Tambahkan shrinkWrap: true
                itemCount: langkahMasak.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${index + 1}.",
                      ),
                      const SizedBox(
                          width:
                              8), // Berikan jarak horizontal antara nomor dan teks
                      Flexible(
                        // Gunakan Flexible untuk menghindari overflow
                        child: Text(langkahMasak[index]),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Text(
              'Komentar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/person.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [

                //   ],
                // )
                Container(
                  height: 200, // Atur batas tinggi yang spesifik di sini
                  child: Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Farah Kuin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                              'Ini saya kok masak gosong ya,Ini saya kok masak gosong ya,Ini saya kok masak gosong ya'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class IngridientTextBold extends StatelessWidget {
  const IngridientTextBold({
    super.key,
    required this.name,
    required this.action,
  });
  final String name;
  final String action;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: action,
          )
        ],
      ),
    );
  }
}
