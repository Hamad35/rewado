import 'package:flutter/material.dart';
import 'package:fskt/src/models/login.dart';
import 'package:fskt/src/models/error.dart';
import 'package:fskt/src/services/restclient.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RestClient restClient = Get.find<RestClient>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  Future<void> login() async {
    
    LoginRequest req = LoginRequest.fromJson({
      'usr': username.text,
      'pwd': password.text,
      'device': 'mobile',
    });
    try {
      LoginResponse res = await restClient.login(req);
      print(res.toJson().toString());
    } catch (e) {
      e as ErrorResponse;
      print(e.statusMessage);
    }
  }

  Future<void> getUsers() async {
    var res = await restClient.sendRequest('/resource/Sales Order');
    print(res);
  }
}
