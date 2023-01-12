import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_rest_ful_api/controllers/user_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void intiState() {
    userController.fetchUser();
    super.initState();
  }

  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<UserController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.user.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text('${controller.user[index].name}'),
                        subtitle: Text('${controller.user[index].email}'),
                      );
                    }),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
