import 'dart:ui';

import 'package:design1/ss.dart';
import 'package:design1/vv.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HeightWeightCheckApp(),
      debugShowCheckedModeBanner: false,
    ));

class HeightWeightCheckApp extends StatefulWidget {
  @override
  _HeightWeightCheckAppState createState() => _HeightWeightCheckAppState();
}

class _HeightWeightCheckAppState extends State<HeightWeightCheckApp> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  String selectedGender = 'male';
  String result = '';
  double normalWeight = 0.0;

  List<Map<String, dynamic>> heightWeightData = [
    {
      'height': 148,
      'age_20_29': {'male': 50.8, 'female': 48.4},
      'age_30_39': {'male': 55.0, 'female': 52.3},
      'age_40_49': {'male': 56.6, 'female': 54.7},
      'age_50_59': {'male': 56.0, 'female': 53.2},
      'age_60_69': {'male': 53.9, 'female': 52.2},
    },

     {
    'height': 150,
    'age_20_29': {'male': 51.3, 'female': 48.9},
    'age_30_39': {'male': 56.7, 'female': 53.9},
    'age_40_49': {'male': 58.1, 'female': 56.5},
    'age_50_59': {'male': 58.0, 'female': 55.7},
    'age_60_69': {'male': 57.3, 'female': 54.8},
  },
  {
    'height': 152,
    'age_20_29': {'male': 51.3, 'female': 51.0},
    'age_30_39': {'male': 58.7, 'female': 55.0},
    'age_40_49': {'male': 61.5, 'female': 59.5},
    'age_50_59': {'male': 61.1, 'female': 57.6},
    'age_60_69': {'male': 60.3, 'female': 55.9},
  },
  {
    'height': 154,
    'age_20_29': {'male': 54.0, 'female': 52.0},
    'age_30_39': {'male': 59.0, 'female': 56.0},
    'age_40_49': {'male': 61.5, 'female': 60.0},
    'age_50_59': {'male': 62.0, 'female': 58.5},
    'age_60_69': {'male': 61.0, 'female': 56.0},
  },
  {
    'height': 156,
    'age_20_29': {'male': 55.0, 'female': 53.0},
    'age_30_39': {'male': 60.0, 'female': 57.0},
    'age_40_49': {'male': 62.0, 'female': 61.0},
    'age_50_59': {'male': 63.0, 'female': 59.0},
    'age_60_69': {'male': 62.0, 'female': 57.0},
  },
  {
    'height': 158,
    'age_20_29': {'male': 57.0, 'female': 54.0},
    'age_30_39': {'male': 61.0, 'female': 58.0},
    'age_40_49': {'male': 63.0, 'female': 62.0},
    'age_50_59': {'male': 64.0, 'female': 60.0},
    'age_60_69': {'male': 63.0, 'female': 58.0},
  },
  {
    'height': 160,
    'age_20_29': {'male': 58.0, 'female': 55.0},
    'age_30_39': {'male': 63.0, 'female': 59.0},
    'age_40_49': {'male': 65.0, 'female': 63.0},
    'age_50_59': {'male': 66.0, 'female': 61.0},
    'age_60_69': {'male': 65.0, 'female': 59.0},
  },
  {
    'height': 162,
    'age_20_29': {'male': 60.0, 'female': 57.0},
    'age_30_39': {'male': 64.0, 'female': 60.0},
    'age_40_49': {'male': 66.0, 'female': 64.0},
    'age_50_59': {'male': 67.0, 'female': 62.0},
    'age_60_69': {'male': 66.0, 'female': 60.0},
  },
  {
    'height': 164,
    'age_20_29': {'male': 61.0, 'female': 58.0},
    'age_30_39': {'male': 65.0, 'female': 61.0},
    'age_40_49': {'male': 67.0, 'female': 65.0},
    'age_50_59': {'male': 68.0, 'female': 63.0},
    'age_60_69': {'male': 67.0, 'female': 61.0},
  },
  {
    'height': 166,
    'age_20_29': {'male': 63.0, 'female': 59.0},
    'age_30_39': {'male': 66.0, 'female': 62.0},
    'age_40_49': {'male': 68.0, 'female': 66.0},
    'age_50_59': {'male': 69.0, 'female': 64.0},
    'age_60_69': {'male': 68.0, 'female': 62.0},
  },
  {
    'height': 168,
    'age_20_29': {'male': 64.0, 'female': 60.0},
    'age_30_39': {'male': 67.0, 'female': 63.0},
    'age_40_49': {'male': 69.0, 'female': 67.0},
    'age_50_59': {'male': 70.0, 'female': 65.0},
    'age_60_69': {'male': 69.0, 'female': 63.0},
  },
  {
    'height': 170,
    'age_20_29': {'male': 66.0, 'female': 61.0},
    'age_30_39': {'male': 68.0, 'female': 64.0},
    'age_40_49': {'male': 70.0, 'female': 68.0},
    'age_50_59': {'male': 71.0, 'female': 66.0},
    'age_60_69': {'male': 70.0, 'female': 64.0},
  },
  {
    'height': 172,
    'age_20_29': {'male': 68.0, 'female': 63.0},
    'age_30_39': {'male': 70.0, 'female': 66.0},
    'age_40_49': {'male': 72.0, 'female': 70.0},
    'age_50_59': {'male': 73.0, 'female': 68.0},
    'age_60_69': {'male': 72.0, 'female': 66.0},
  },
  {
    'height': 174,
    'age_20_29': {'male': 69.0, 'female': 64.0},
    'age_30_39': {'male': 71.0, 'female': 67.0},
    'age_40_49': {'male': 73.0, 'female': 71.0},
    'age_50_59': {'male': 74.0, 'female': 69.0},
    'age_60_69': {'male': 73.0, 'female': 67.0},
  },
  {
    'height': 176,
    'age_20_29': {'male': 71.0, 'female': 66.0},
    'age_30_39': {'male': 73.0, 'female': 69.0},
    'age_40_49': {'male': 75.0, 'female': 73.0},
    'age_50_59': {'male': 76.0, 'female': 71.0},
    'age_60_69': {'male': 75.0, 'female': 69.0},
  },
  {
    'height': 178,
    'age_20_29': {'male': 72.0, 'female': 67.0},
    'age_30_39': {'male': 74.0, 'female': 70.0},
    'age_40_49': {'male': 76.0, 'female': 74.0},
    'age_50_59': {'male': 77.0, 'female': 72.0},
    'age_60_69': {'male': 76.0, 'female': 70.0},
  },
  {
    'height': 180,
    'age_20_29': {'male': 74.0, 'female': 68.0},
    'age_30_39': {'male': 76.0, 'female': 72.0},
    'age_40_49': {'male': 78.0, 'female': 76.0},
    'age_50_59': {'male': 79.0, 'female': 74.0},
    'age_60_69': {'male': 78.0, 'female': 72.0},
  },
  {
    'height': 182,
    'age_20_29': {'male': 76.0, 'female': 70.0},
    'age_30_39': {'male': 78.0, 'female': 74.0},
    'age_40_49': {'male': 80.0, 'female': 78.0},
    'age_50_59': {'male': 81.0, 'female': 76.0},
    'age_60_69': {'male': 80.0, 'female': 74.0},
  },
  {
    'height': 184,
    'age_20_29': {'male': 78.0, 'female': 72.0},
    'age_30_39': {'male': 80.0, 'female': 76.0},
    'age_40_49': {'male': 82.0, 'female': 80.0},
    'age_50_59': {'male': 83.0, 'female': 78.0},
    'age_60_69': {'male': 82.0, 'female': 76.0},
  },
  {
    'height': 186,
    'age_20_29': {'male': 80.0, 'female': 74.0},
    'age_30_39': {'male': 82.0, 'female': 78.0},
    'age_40_49': {'male': 84.0, 'female': 82.0},
    'age_50_59': {'male': 85.0, 'female': 80.0},
    'age_60_69': {'male': 84.0, 'female': 78.0},
  },
  {
    'height': 188,
    'age_20_29': {'male': 82.0, 'female': 76.0},
    'age_30_39': {'male': 84.0, 'female': 80.0},
    'age_40_49': {'male': 86.0, 'female': 84.0},
    'age_50_59': {'male': 87.0, 'female': 82.0},
    'age_60_69': {'male': 86.0, 'female': 80.0},
  },
  {
    'height': 190,
    'age_20_29': {'male': 84.0, 'female': 78.0},
    'age_30_39': {'male': 86.0, 'female': 82.0},
    'age_40_49': {'male': 88.0, 'female': 86.0},
    'age_50_59': {'male': 89.0, 'female': 84.0},
    'age_60_69': {'male': 88.0, 'female': 82.0},
  },
    // Add more data for different heights...
  ];

  void checkWeight() {
    double height = double.tryParse(heightController.text) ?? 0;
    double weight = double.tryParse(weightController.text) ?? 0;
    int age = int.tryParse(ageController.text) ?? 0;

    if (height > 0 && weight > 0 && age > 0) {
      // Find normal weight based on height, gender, and age
      Map<String, dynamic>? heightData = heightWeightData.firstWhere(
        (data) => data['height'] == height,
        orElse: () => {},
      );

      if (heightData.isNotEmpty) {
        String ageGroup = getAgeGroup(age);
        normalWeight = heightData[ageGroup][selectedGender] ?? 0.0;

        double bmi = weight / (height / 100 * height / 100);
        if (bmi < 18.5) {
          result = 'Sizning vazningiz yetarli emas';
        } else if (bmi >= 18.5 && bmi <= 24.9) {
          result = 'Sizning vazningiz normal';
        } else {
          result = 'Siz ortiqcha vaznga egasiz';
        }

        result += '\nBo`yingiz uchun normal vazn: ${normalWeight.toStringAsFixed(1)} kg';
      } else {
        result = 'Ushbu bo`y uchun ma`lumot topilmadi!';
      }
    } else {
      result = ' Iltimos, to`g`ri vazn, bo`y va yosh kiriting" ';
    }

    setState(() {});
  }

  String getAgeGroup(int age) {
    if (age >= 20 && age <= 29) {
      return 'age_20_29';
    } else if (age >= 30 && age <= 39) {
      return 'age_30_39';
    } else if (age >= 40 && age <= 49) {
      return 'age_40_49';
    } else if (age >= 50 && age <= 59) {
      return 'age_50_59';
    } else {
      return 'age_60_69';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 246, 234, 132).withOpacity(0.3),
                  Color.fromARGB(255, 242, 239, 152),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
       
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(right: 30,),
                  child: Row(
                    children: [
                      Text(" VAZZEN",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25,color: Color.fromARGB(255, 68, 35, 95)),),
                    ],
                  ),
                ),
                    SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                   
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Ssw()));
                          
                        },
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/boy.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(width: 2,color: Color.fromARGB(255, 89, 51, 133))
                          ),
                        ),
                      ),
                       SizedBox(width: 10,),
                       InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Qayt()));
                        },
                         child: Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("assets/ee.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(width: 2,color: Color.fromARGB(255, 89, 51, 133))
                          ),
                                           ),
                       ),
                  
                      
                    ],
                  ),
                ),
                
                       Padding(
                         padding: const EdgeInsets.all(15),
                         child: Container(
                          width: double.infinity,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(251, 245, 184, 80),
                            borderRadius: BorderRadius.circular(18),
                            
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 16,),
                               Text(
                            result,
                            style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 45, 25, 72),fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 7),
                          // Display a normal weight icon based on the result
                          result.contains('normal')
                              ? Icon(Icons.check_circle,
                                  color: Color.fromARGB(255, 74, 47, 108), size: 48)
                              : Icon(Icons.error,
                                  color: Color.fromARGB(255, 75, 36, 101),
                                  size: 48),
                            ],
                          ),
                         ),
                       ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextField(
                          controller: heightController,
                          hintText: 'bo`yingizni kiriting (cm)',
                          icon: Icons.height,
                        ),
                        SizedBox(height: 16),
                        CustomTextField(
                          controller: weightController,
                          hintText: 'vazningizni kiriting (kg)',
                          icon: Icons.fitness_center,
                        ),
                        SizedBox(height: 16),
                        CustomTextField(
                          controller: ageController,
                          hintText: 'yoshingizni kiriting',
                          icon: Icons.calendar_today,
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                width: 125,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                   color: Color.fromARGB(255, 246, 186, 91),
                              
                                ),
                                child: Center(
                                  child: GenderRadio(
                                    label: 'Ayol',
                                    value: 'male',
                                    groupValue: selectedGender,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedGender = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                width: 120,
                                height: 50,
                              
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 246, 186, 91),
                                ),
                                child: Center(
                                  child: GenderRadio(
                                    label: 'Erkak',
                                    value: 'female',
                                    groupValue: selectedGender,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedGender = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: checkWeight,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 238, 160, 34)
                                .withOpacity(0.6),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 10,
                            shadowColor: Color.fromARGB(255, 244, 174, 45)
                                .withOpacity(0.5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text(
                            'Check',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GenderRadio extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const GenderRadio({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          label,
          style: TextStyle(color: const Color.fromARGB(255, 15, 15, 15)),
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 236, 161, 22).withOpacity(0.5),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 235, 146, 30).withOpacity(0.2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 20, 19, 19).withOpacity(0.5)),
          prefixIcon: Icon(icon, color: Color.fromARGB(255, 64, 39, 101)),
        ),
      ),
    );
  }
}
