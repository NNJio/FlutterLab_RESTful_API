import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../services/photo_api.dart';
import 'photo_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  // final photoController = Get.put();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: const Text(
          'GetAPI',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.to( PhotoPage());
              },
              child: Container(
                width: 0.8.sw,
                height: 0.5.sw,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Photo',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // print(PhotoAPI().photoAPI);
                // Get.to(const PhotoPage());
              },
              child: Container(
                width: 0.8.sw,
                height: 0.5.sw,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Comment',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
