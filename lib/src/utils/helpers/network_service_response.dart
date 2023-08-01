part of 'package:fskt/src/services/restclient.dart';

class NetworkServiceResponse<T> {
  T? content;
  bool success;
  String? message;

  NetworkServiceResponse({this.content, this.success=false, this.message});
}

class MappedNetworkServiceResponse<T> {
  dynamic mappedResult;
  NetworkServiceResponse<T> networkServiceResponse;
  dynamic headers;
  MappedNetworkServiceResponse(
      {this.mappedResult, required this.networkServiceResponse, this.headers});
}
