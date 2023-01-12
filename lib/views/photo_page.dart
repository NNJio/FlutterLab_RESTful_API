import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_rest_ful_api/models/photo_model.dart';

class PhotoPage extends StatelessWidget {
  List<PhotoModel> course = [];
  _getData() async {
    var url = Uri.https('https://jsonplaceholder.typicode.com/', 'photos');
    var response = await http.get(url);
    // if (response.statusCode == 200) {
    //   print(response);
    //   // response.body
    //   // final PhotoModel photoModel =
    //   // PhotoModel.photoModelFromJson((response.body));
    //   // setState(() {
    //   //   course = photoModel.
    //   // });
    // }
    print(response.statusCode);
  }

  void intiState() {
    _getData();
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print(_getData);
        },
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: const Center(
              child: Text('Testtttttt'),
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Expanded(
    //           child: Obx(
    //             () => ListView.builder(
    //               itemCount: 10,
    //               itemBuilder: (context, index) {
    //                 return Card(
    //                   child: ListTile(
    //                     leading: CircleAvatar(
    //                         radius: 28, backgroundImage: NetworkImage()),
    //                   ),
    //                 );
    //               },
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
