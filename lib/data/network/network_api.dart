import 'dart:convert';
import 'dart:io';

import 'package:flutterfirebase/data/network/base_api_network.dart';
import 'package:http/http.dart' as http;
import '../expectation_class.dart';

class NetworkApi extends BaseApiNetwork {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = responseCode(response);
    } on SocketException {
      throw NetworkTimeoutExpectation("No internet connection");
    }
    return responseJson;
  }

  @override
  Future postPostApiResponse(String url,dynamic data) async {
    // TODO: implement postPostApiResponse
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 10));
      responseJson = responseCode(response);
    } on SocketException {
      throw NetworkTimeoutExpectation("No Internet Connection");
    }
    return responseJson;
  }

  dynamic responseCode(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 404:
        return BadRequestExpectation("Data not found");

      case 500:
        return NetworkTimeoutExpectation(response.statusCode.toString());

      default:
        throw NetworkTimeoutExpectation(
            "Network face some issues:" + response.statusCode.toString());
    }
  }
}
