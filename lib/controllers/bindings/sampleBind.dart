import 'package:get/instance_manager.dart';
import 'package:getx_other/controllers/sumController.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SumController>(() => SumController());
  }
}
