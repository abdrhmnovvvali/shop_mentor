import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shop_mentor/data/dio/auth_dio.dart';
import 'package:shop_mentor/data/request/sign_up_request.dart';
import 'package:shop_mentor/data/response/sign_up_response.dart';
import 'package:shop_mentor/utils/constants/api_keys.dart';
import 'package:shop_mentor/utils/extension/int_extensions.dart';

class AuthService {


   Future<SIgnUpResponse?> signUp(SIgnUpRequest request) async {
    try {
      final response = await AuthDio.instance.dio.post(
        ApiKeys.signUp,
        data: request.toJson(),
      );

      log("Response Status: ${response.statusCode}");
      log("Response Data: ${response.data}");

      if (response.statusCode!.isSuccess) {
        return SIgnUpResponse.fromJson(response.data);
      } else {
        throw Exception(
            'Sign up failed with status code: ${response.statusCode}');
      }
    } on DioException catch (dioError) {
      throw Exception("DioException occurred: ${dioError.message}");
    } catch (e, s) {
      log('Unexpected error: $e');
      log('StackTrace Unexpected error: $s');
      throw Exception('Unexpected error during sign-up: $e');
    }
  }


}
