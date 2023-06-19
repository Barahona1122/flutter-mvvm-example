import 'dart:convert';
import 'dart:io';

import 'package:pruebas_mvvm/data/errors/AppException.dart';
import 'package:pruebas_mvvm/data/newtwork/NetworkBaseApiService.dart';
import 'package:http/http.dart' as http;
import 'package:pruebas_mvvm/data/newtwork/NetworkResponseStatusCode.dart';

class NetworkApiService extends NetworkBaseApiService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(baseUrl + url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("Error interno");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case NetworkResponseStatusCode.codeSuccess:
        return jsonDecode(response.body);

      case NetworkResponseStatusCode.codeBadRequest:
        return jsonDecode(response.body);

      case NetworkResponseStatusCode.codeUnauthorized:
      case NetworkResponseStatusCode.codeUnauthorized2:
      case NetworkResponseStatusCode.codeUnauthorized3:
        return jsonDecode(response.body);

      case NetworkResponseStatusCode.codeServerError:
        return jsonDecode(response.body);
      default:
        throw FetchDataException(
            'Error occured while communication with server with status code : ${response.statusCode}');
    }
  }
}
