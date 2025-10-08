class AuthState {
  // final String _str="";
}

class AuthSuccess extends AuthState {
  final String msg;
  AuthSuccess(this.msg);

  // show(){
  //   print(_str);
  // }
}

class AuthLoading extends AuthState {
  final String msg;
  AuthLoading(this.msg);
}

class AuthError extends AuthState {
  final String msg;
  AuthError(this.msg);
}

void main() {
  AuthState auth = AuthSuccess("success");

  switch (auth) {
    case AuthSuccess(:final msg):
      print("${msg}");
      break;
    case AuthError(:final msg):
      print("${msg}");
      break;
    default:
      print("Loding");
  }
}
