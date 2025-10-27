import 'package:bloc/bloc.dart';
import 'package:dart_app/authapp/login/login_event.dart';
import 'package:dart_app/authapp/login/login_state.dart';
import 'package:dart_app/authapp/model/user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final User? registeredUser;

  LoginBloc({this.registeredUser}) : super(LoginInitial()) {
    on<LoginButtonEvent>((event, emit) {
      emit(LoginLoading());

      if (registeredUser == null) {
        emit(LoginFailure("User not registered"));
        return;
      }

      if (event.email.trim() == registeredUser!.email.trim() &&
          event.password.trim() == registeredUser!.password.trim()) {

        emit(LoginSuccess(registeredUser!));

      } else {
        emit(LoginFailure("Email or Password incorrect"));
      }
    });
  }
}
