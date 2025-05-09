part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}
final class SignUpLoading extends SignUpState {}
final class SignUpSuccess extends SignUpState {
  SignUpSuccess({required this.response});
Future<SIgnUpResponse?> response;

}
final class SignUpError extends SignUpState {}
