
import '../model/user.dart';

abstract class SignUpEvent {}

class SignUpButtonEvent extends SignUpEvent {
  User user;

  SignUpButtonEvent(this.user);
}
