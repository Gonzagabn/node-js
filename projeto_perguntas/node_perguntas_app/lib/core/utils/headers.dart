// ignore_for_file: prefer_typing_uninitialized_variables

class HeadersAPI {
  final token;
  HeadersAPI({this.token});
  Map<String, String> getHeaders() {
    return token == null
        ? {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Accept-Charset": "UTF-8",
          }
        : {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token"
          };
  }
}
