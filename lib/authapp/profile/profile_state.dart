import 'package:dart_app/authapp/model/user.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileDataState extends ProfileState {
  final User user;
  ProfileDataState(this.user);
}
