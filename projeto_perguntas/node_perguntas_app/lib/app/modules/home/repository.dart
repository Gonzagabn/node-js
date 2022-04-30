import 'package:node_perguntas_app/app/data/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);
  getWelcome() => api.getWelcome();
}
