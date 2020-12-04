import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_other/controllers/sumController.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GetX<SumController>(builder: (_) {
                  // print("Count 1 Rebuild");
                  return Text(
                    "Counter #1:  ${_.count1.value}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                Text("                       +"),
                GetX<SumController>(builder: (_) {
                  // print("Count 2 Rebuild");
                  return Text(
                    "Counter #1:  ${_.count2.value}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                Text("                       ="),
                GetX<SumController>(builder: (_) {
                  // print("Sum Rebuild");
                  return Text(
                    "Sum:              ${_.sum}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () {
                    // sumController.increment(); // don't need if we have GetWidget Controller
                    Get.find<SumController>().increment();
                  },
                  child: Text("Increment Counter #1"),
                ),
                RaisedButton(
                  onPressed: () {
                    // sumController.increment2();
                    Get.find<SumController>().increment2();
                  },
                  child: Text("Increment Counter #2"),
                ),
                RaisedButton(
                  onPressed: () {
                    GetStorage storage = GetStorage();
                    storage.write(
                        'count1', Get.find<SumController>().count1.value);
                    storage.write(
                        'count2', Get.find<SumController>().count2.value);
                  },
                  child: Text("Store Values"),
                ),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () {
                    if (Get.isDarkMode) {
                      Get.changeTheme(ThemeData.light());
                    } else {
                      Get.changeTheme(ThemeData.dark());
                    }
                  },
                  child: Text("Change Theme"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
