// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:node_perguntas_app/core/utils/headers.dart';

const baseUrl = 'http://localhost:8000';

class MyApi extends GetConnect {
  getWelcome() async {
    final response = await get('$baseUrl/',
        headers: HeadersAPI(token: '').getHeaders(),
        decoder: (response) => response);
    if (response.hasError) {
      return 'Body: ${response.body.toString()}\nStatus: ${response.statusCode}';
    } else {
      return 'Body: ${response.body.toString()}\nStatus: ${response.statusCode}';
    }
  }
}
