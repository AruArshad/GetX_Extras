import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_other/controllers/bindings/sampleBind.dart';
import 'package:getx_other/pages/second.dart';
import 'package:getx_other/utils/translations.dart';

import 'pages/first.dart';

void main() async {
  GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        accentColor: Colors.purpleAccent, primaryColor: Colors.purple),
    initialRoute: '/first',
    getPages: [
      GetPage(name: '/first', page: () => First()),
      GetPage(name: '/second', page: () => Second(), binding: SampleBind())
    ],
    defaultTransition: Transition.zoom,
    locale: Locale('pt', 'BR'),
    translations: MyTranslations(),
  ));
}
