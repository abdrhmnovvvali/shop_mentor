import 'dart:developer';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';


class AuthDio {
  AuthDio._();

  static AuthDio? _instance;
  Dio? _dio;

  static AuthDio get instance => _instance ??= AuthDio._();

  Dio get dio {
    _dio ??= Dio(
      BaseOptions(
        sendTimeout:const Duration(seconds: 20),
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout:const Duration(seconds: 20),
      ),
    );

    if (kDebugMode) {
      _dio!.interceptors.add(AwesomeDioInterceptor(logger: log));
    }

    return _dio!;
  }
}
