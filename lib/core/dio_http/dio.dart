import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:trialdemo/core/snack_bar/snack_bar_show.dart';
import '../platform/network_info.dart';

// Created Dio Client
class DioClient extends NetworkInfo {
  // extends OAuth2 client to DIO Client

  /////////////////////////////////////
  final String _baseUrl = dotenv.env['BASE_URL'] ?? '';
  static BaseOptions opts = BaseOptions(
    connectTimeout: 6000,
    receiveTimeout: 5000,
  );
  final Dio _dio = Dio(
    opts,
  )..interceptors.add(Logging());

  Future get({required String url}) async {
    bool status = await getInternetStatus();

    Response? _response;
    try {
      if (status) {
        _response = await _dio.get(
          _baseUrl + url,
        );
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Không có internet",
          "Vui lòng kiểm tra lại kết nối internet",
        );
      }
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Kết nối đến server lỗi",
          "Vui lòng liên lạc người quản trị",
        );
        print('Error sending request!');
        print(e.message);
      }
    } catch (e) {
      print(e);
    }
    return _response;
  }

  Future post({
    required String url,
    required Map<String, dynamic> dataReq,
  }) async {
    bool status = await getInternetStatus();

    Response? _response;
    try {
      if (status) {
        _response = await _dio.post(
          _baseUrl + url,
          data: dataReq,
        );

        return _response;
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Không có internet",
          "Vui lòng kiểm tra lại kết nối internet",
        );
      }
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Kết nối đến server lỗi",
          "Vui lòng liên lạc người quản trị",
        );
        print('Error sending request!');
        print(e);
      }
    }
  }

  Future put({
    required String url,
    required Map<String, dynamic> dataReq,
  }) async {
    bool status = await getInternetStatus();

    Response? _response;
    try {
      if (status) {
        _response = await _dio.put(
          _baseUrl + url,
          data: dataReq,
        );
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Không có internet",
          "Vui lòng kiểm tra lại kết nối internet",
        );
      }
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        SnackBarCommon.snackBarErrorShow(
          "Kết nối đến server lỗi",
          "Vui lòng liên lạc người quản trị",
        );
        print('Error sending request!');
        print(e.message);
      }
    }
    return _response;
  }

  Future<void> delete({required String url}) async {
    try {
      await _dio.delete(_baseUrl + url);
    } catch (e) {
      SnackBarCommon.snackBarErrorShow(
        "Kết nối đến server lỗi",
        "Vui lòng liên lạc người quản trị",
      );
    }
  }
}

// Intercepter for API calls
class Logging extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // options.headers.addAll({"Authorization": "Bearer: ${token ?? ''}"});
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}

final dioClient = DioClient();
