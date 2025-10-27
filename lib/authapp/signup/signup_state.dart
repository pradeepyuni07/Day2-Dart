import '../model/user.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final User user;
  SignUpSuccess(this.user);
}

class SignUpFailure extends SignUpState {
  final String err;
  SignUpFailure(this.err);
}
