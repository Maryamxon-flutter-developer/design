import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Qayt extends StatefulWidget {
  const Qayt({super.key});

  @override
  State<Qayt> createState() => _QaytState();
}

class _QaytState extends State<Qayt> {
  // Updated list of desired YouTube links
  final List<String> _youtubeUrls = [
    "https://youtu.be/zYMMI4zz1VI?si=yYi922iabUk3t8-C", // Exercise Video
    "https://youtu.be/DHa0zdterPs?si=oy-umYCnScE1SDcD", // Healthy Eating Video
    "https://youtu.be/XYAVtUey3Y4?si=_54z-XM_AxcA58W2", // Another Video
  ];

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print("Cannot launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 239, 152),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 239, 152),
        title: Text("Ma'lumotlar"),
        centerTitle: true,
      ),
      body: ListView(
        children: List.generate(_youtubeUrls.length, (index) {
          return GestureDetector(
            onTap: () {
              _launchUrl(_youtubeUrls[index]);
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/vv.jpg'), // Replace with your asset image
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(18), // Rounded corners
                  border: Border.all(color: Color.fromARGB(255, 61, 31, 86), width: 2),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        index == 0 
                          ? "Bo'y O'stirish uchun tavsiya" 
                          : index == 1 
                            ? "To'g'ri Ovqatlanish haqida" 
                            : "Bo'y O'stirish uchun mashqlar", // Updated for the third video
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black45, // Adds a background to the text
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Qayt(),
));
