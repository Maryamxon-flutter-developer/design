import 'package:flutter/material.dart';

class zarr extends StatefulWidget {
  const zarr({super.key});

  @override
  State<zarr> createState() => _zarrState();
}

class _zarrState extends State<zarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data")
        ],
      ),
    );
  }
}