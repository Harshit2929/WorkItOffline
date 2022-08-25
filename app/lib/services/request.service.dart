import 'package:dio/dio.dart';

class RequestService {
  static Future<Response> request(String url, Options options,
      Map<String, dynamic>? data, Map<String, dynamic>? headers,
      [bool validateStatus = false]) async {
    // final h = {
    //   ...?headers,
    // };
    // final token = await (new SecureStorage()).readAccessToken();
    // h.addAll({
    //   "Content-Type": "application/json",
    //   "Authorization": "Bearer ${token}"
    // });
    // options.headers = h;
    if (validateStatus) {
      options.validateStatus = (status) {
        return status! < 500;
      };
    }

    print(data);
    return await Dio().request(
      url,
      options: options,
      data: data,
    );
  }

  static Future<Response> get(String url, Map<String, String>? headers,
      [bool validateStatus = false]) {
    Options options = Options(method: 'GET');

    return request(url, options, null, headers, validateStatus);
  }

  static Future<Response> post(
      String url, Map<String, String>? headers, Map<String, dynamic> data,
      [bool validateStatus = false]) {
    print(url);
    Options options = Options(method: 'POST');
    return request(url, options, data, headers, validateStatus);
  }
}
