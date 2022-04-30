import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:node_perguntas_app/app/modules/home/binding.dart';
import 'package:node_perguntas_app/app/modules/home/page.dart';
import 'package:node_perguntas_app/routes/pages.dart';

Future main() async {
  runApp(
    GetMaterialApp(
      // debugShowMaterialGrid: true,
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: "IPI App",
      initialBinding: HomeBinding(),
      home: HomePage(),
      getPages: AppPages.pages,
    ),
  );
}
