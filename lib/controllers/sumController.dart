import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  @override
  onInit() {
    GetStorage storage = GetStorage();
    if (storage.read('count1') != null) {
      count1.value = storage.read('count1');
      count2.value = storage.read('count2');
    }

    print("Screen Height: " + Get.height.toString());
    print("Screen Width: " + Get.width.toString());
    print("is iOS?: " + GetPlatform.isIOS.toString());
    print("is Android?: " + GetPlatform.isAndroid.toString());
  }

  increment() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;
}
