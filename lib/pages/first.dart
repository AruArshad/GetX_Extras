import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_other/controllers/sumController.dart';

import 'second.dart';

class First extends StatelessWidget {
  // final CountController countController = Get.put(CountController());  // don't need if we're init in GetBuilder
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailCtrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("title".trArgs(["Aru"])),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: emailCtrl,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailCtrl.text)) {
                    Get.snackbar("Correct Format", "Correct email format given",
                        backgroundColor: Colors.green,
                        snackPosition: SnackPosition.BOTTOM);
                  } else {
                    Get.snackbar("Wrong Format", "Wrong email format Given",
                        backgroundColor: Colors.red,
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: Text("Validate Email"),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en'));
                },
                child: Text("Change locale to English"),
              ),
              RaisedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text("Change locale to US"),
              ),
              RaisedButton(
                onPressed: () {
                  Get.updateLocale(Locale('pt'));
                },
                child: Text("Change locale to Portugal"),
              ),
              RaisedButton(
                onPressed: () {
                  Get.updateLocale(Locale('pr', 'BR'));
                },
                child: Text("Change locale to Brazil"),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: () {
                  Get.toNamed('/second');
                },
                child: Text("Next Screen"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
