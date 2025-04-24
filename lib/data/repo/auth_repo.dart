import 'package:shop_mentor/data/request/sign_up_request.dart';
import 'package:shop_mentor/data/response/sign_up_response.dart';

abstract class AuthRepo {

Future<SIgnUpResponse?>signUp({

  required SIgnUpRequest request
});






}