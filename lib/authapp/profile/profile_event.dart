import 'package:dart_app/authapp/model/user.dart';

abstract class ProfileEvent {}

class ProfileDataEvent extends ProfileEvent {
  final User user;
  ProfileDataEvent(this.user);
}
