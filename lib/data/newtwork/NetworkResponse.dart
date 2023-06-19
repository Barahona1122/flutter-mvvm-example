class NetworkResponse {
  final Map<Object, dynamic> response;
  NetworkResponse(this.response);

  bool succes() {
    return response["success"];
  }

  String message() {
    return response["message"].toString();
  }

  Map<Object, dynamic> data({String defaultIndex = 'data'}) {
    return response[defaultIndex];
  }
}
