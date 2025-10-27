import 'package:bloc/bloc.dart';
import '../model/user.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpButtonEvent>((event, emit) {
      emit(SignUpLoading());

      final user = event.user;

      if (user.name.isEmpty ||
          user.email.isEmpty ||
          user.phone.isEmpty ||
          user.password.isEmpty) {
        emit(SignUpFailure("All fields are required!"));
      } else {
        emit(SignUpSuccess(user));
      }
    });
  }
}
