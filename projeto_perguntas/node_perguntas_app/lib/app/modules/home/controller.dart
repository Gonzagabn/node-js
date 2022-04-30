import 'package:get/get.dart';
import 'package:node_perguntas_app/app/modules/home/repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  final resText = ''.obs;
  HomeController(this.repository);

  getWelcome() async {
    final response = await repository.getWelcome();
    resText.value = response;
  }
}
