abstract class BaseApiNetwork {

  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> postPostApiResponse(String url, dynamic data);
}
