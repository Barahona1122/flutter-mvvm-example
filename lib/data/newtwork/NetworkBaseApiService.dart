abstract class NetworkBaseApiService {
  final String baseUrl =
      "https://000erbhost-clean-code.000webhostapp.com/public/api/admin/v1/";

  Future<dynamic> getResponse(String url);
}
