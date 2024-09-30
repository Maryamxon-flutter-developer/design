import 'package:flutter/material.dart';

class Ssw extends StatefulWidget {
  const Ssw({super.key});

  @override
  State<Ssw> createState() => _SswState();
}

class _SswState extends State<Ssw> {
  final List<Map<String, String>> items = [
    {
      'name': 'Brokkoli',
      'image': 'assets/brok.jpg',
    },
    {
      'name': 'Shalg\'am',
      'image': 'assets/shal.jpg',
    },
    {
      'name': 'Kale',
      'image': 'assets/kale.jpg',
    },
    {
      'name': 'Shirin kartoshka',
      'image': 'assets/kar.webp',
    },
    {
      'name': 'Bodring',
      'image': 'assets/bod.jpg',
    },
    {
      'name': 'Sabzi',
      'image': 'assets/sab.jpg',
    },
    {
      'name': 'Qo\'ziqorin',
      'image': 'assets/qq.jpg',
    },
    {
      'name': 'Vitamin D',
      'image': 'assets/images.jpg',
    },
    {
      'name': 'Vitamin K',
      'image': 'assets/kk.jpg',
    },
    {
      'name': 'Vitamin C',
      'image': 'assets/cc.jpg',
    },
    {
      'name': 'Vitamin A',
      'image': 'assets/aa.jpg',
    },
    {
      'name': 'B vitaminlari',
      'image': 'assets/nn.jpg',
    },
    {
      'name': 'Kalsiy',
      'image': 'assets/kk.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 239, 152),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Text("Foydali Sabzavotlar va Vitaminlar"),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 242, 239, 152),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Bo'yni o'stirish va o'sish jarayonini qo'llab-quvvatlash uchun quyidagi sabzavotlar va vitaminlar foydali hisoblanadi:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8),
                  child: Container(
                    padding: EdgeInsets.all(10), // Container ichidagi padding
                    height: 120, // Kartochkaning balandligini kattalashtirish
                    child: Row(
                      children: [
                        Container(
                          width: 100, // Rasmning kengligini kattalashtirish
                          height: 100, // Rasmning balandligini kattalashtirish
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8), // Rasmni yumaloqlashtirish
                            child: Image.asset(
                              items[index]['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16), // Rasm va matn o'rtasidagi bo'shliq
                        Expanded(
                          child: Text(
                            items[index]['name']!,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
