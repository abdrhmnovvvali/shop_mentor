import 'package:shop_mentor/data/repo/auth_repo.dart';
import 'package:shop_mentor/data/request/sign_up_request.dart';
import 'package:shop_mentor/data/response/sign_up_response.dart';
import 'package:shop_mentor/data/service/remote/auth_service.dart';

class AuthImplRepo extends AuthRepo {
  AuthImplRepo(this._signUpService);
final AuthService _signUpService;

  @override
  Future<SIgnUpResponse?> signUp({required SIgnUpRequest request}) {
    return _signUpService.signUp(request);
  }
}