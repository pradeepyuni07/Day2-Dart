import 'package:dart_app/authapp/login/login_bloc.dart';
import 'package:dart_app/authapp/login/login_event.dart';
import 'package:dart_app/authapp/login/login_state.dart';
import 'package:dart_app/authapp/profile/profile_bloc.dart';
import 'package:dart_app/authapp/profile/profile_event.dart';
import 'package:dart_app/authapp/screens/profile_screen.dart';
import 'package:dart_app/authapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/user.dart';

class LoginScreen extends StatefulWidget {
  final User? registeredUser;
  const LoginScreen({Key? key, this.registeredUser}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(registeredUser: widget.registeredUser),
      child: Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen(user:state.user,)),
              );
            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: emailCtrl,
                    decoration: InputDecoration(labelText: 'Email')),
                SizedBox(height: 8),
                TextField(
                    controller: passCtrl,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true),
                SizedBox(height: 16),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    final loading = state is LoginLoading;
                    return ElevatedButton(
                      onPressed: loading
                          ? null
                          : () {
                        context.read<LoginBloc>().add(
                            LoginButtonEvent(emailCtrl.text.trim(),
                                passCtrl.text.trim()));
                      },
                      child: loading
                          ? SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                          : Text('Login'),
                    );
                  },
                ),
                SizedBox(height: 50,),
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                }, child: Text("I have no account?? Signup"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
