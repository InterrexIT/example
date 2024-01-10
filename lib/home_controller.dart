import 'package:get/get.dart';
import 'package:post_api/home_service.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeService homeService = HomeService();

  void postData(String name, String job) async {
    try {
      http.Response response = await homeService.postData(name, job);
      if (response.statusCode == 201) {
        print(response.body);
      }
    } catch (exception) {
      print(exception);
    }
  }

  void updateData(String name, String job, int userId) async {
    try {
      http.Response response = await homeService.updateData(name, job,userId);
      if (response.statusCode == 200) {
        print(response.body);
      }
    } catch (exception) {
      print(exception);
    }
  }


  void deleteData(int userId) async {
    try {
      http.Response response = await homeService.deleteData(userId);
      if (response.statusCode == 204) {
        print("User delete sucessfully");
      }
    } catch (exception) {
      print(exception);
    }
  }

}
