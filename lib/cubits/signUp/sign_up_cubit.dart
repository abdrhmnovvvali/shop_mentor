import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mentor/data/repo/auth_repo.dart';
import 'package:shop_mentor/data/request/sign_up_request.dart';
import 'package:shop_mentor/data/response/sign_up_response.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(SignUpInitial());
final AuthRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void handleSignUp(BuildContext context) async {
    if (formKey.currentState!.validate()) return;

    try {
      emit(SignUpLoading());



      final request = SIgnUpRequest(
        email: emailController.text,
        username: usernameController.text,
        mobile: phoneController.text,
        password: passwordController.text,
        passwordConfirm: confirmPasswordController.text,
      );
      final response =_signUpRepo.signUp(request: request);

      emit(SignUpSuccess(response:response));




    } catch (e) {
emit(SignUpError());


    }
  }
  @override
  Future<void> close() {
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }}
