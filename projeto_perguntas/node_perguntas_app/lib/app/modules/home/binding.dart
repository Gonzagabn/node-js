import 'package:get/get.dart';
import 'package:node_perguntas_app/app/data/api.dart';
import 'package:node_perguntas_app/app/modules/home/controller.dart';
import 'package:node_perguntas_app/app/modules/home/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
