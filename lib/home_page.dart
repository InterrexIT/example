import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:post_api/home_controller.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Submit'),
                onPressed: (){
                 homeController.postData("Sultan Rubel", "Student");
                },
              ),

              ElevatedButton(
                child: Text('Update'),
                onPressed: (){
                  homeController.updateData("Sakib Hasan", "Doctor",3);
                },
              ),


              ElevatedButton(
                child: Text('Delete'),
                onPressed: (){
                  homeController.deleteData(416);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
