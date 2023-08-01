import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fskt/src/utils/routes/app_routes.dart';
import 'package:fskt/src/controllers/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings,),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Get.toNamed(Routes.settingsRoute);
            },
          ),
        ],
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          // print('what is c: $c');
          return SafeArea(
            child: Column(
              children: [
                TextField(
                  controller: _.username,
                ),
                TextField(
                  controller: _.password,
                ),
                ElevatedButton(
                  onPressed: _.login,
                  child: Container(
                    color: Colors.black,
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: _.getUsers,
                  child: Container(
                    color: Colors.black,
                    child: Text('Get Users'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
