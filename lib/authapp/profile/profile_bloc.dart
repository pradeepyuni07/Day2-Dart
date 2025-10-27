import 'package:bloc/bloc.dart';
import 'package:dart_app/authapp/profile/profile_event.dart';
import 'package:dart_app/authapp/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileDataEvent>((event, emit) {
      emit(ProfileDataState(event.user));
    });
  }
}
