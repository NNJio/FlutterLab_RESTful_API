import 'package:get/get.dart';

import 'package:test_rest_ful_api/models/user_model.dart';
import 'package:test_rest_ful_api/services/user_service.dart';

class UserController extends GetxController {
  var user = <User>[].obs;
  void fetchUser() async {
    UserService request = UserService();
    request.userService().then((value) {
      if (value.statusCode == 200) {
        for (var item in value.data) {
          user.add(User.fromJson(item));
        }
      } else {
        print('Error');
      }
    }).catchError((onError) {
      printError();
    });
  }
}
