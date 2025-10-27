import 'package:dart_app/authapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/user.dart';
import '../profile/profile_bloc.dart';
import '../profile/profile_event.dart';
import '../signup/signup_bloc.dart';
import '../signup/signup_event.dart';
import '../signup/signup_state.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Sign Up")),
        body: BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Signup Successful ✅")),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(registeredUser: state.user),
                ),
              );
            } else if (state is SignUpFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.err)),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextField(
                    controller: nameCtrl,
                    decoration: const InputDecoration(labelText: "Name")),
                const SizedBox(height: 8),
                TextField(
                    controller: phoneCtrl,
                    decoration: const InputDecoration(labelText: "Phone")),
                const SizedBox(height: 8),
                TextField(
                    controller: emailCtrl,
                    decoration: const InputDecoration(labelText: "Email")),
                const SizedBox(height: 8),
                TextField(
                    controller: passCtrl,
                    decoration: const InputDecoration(labelText: "Password"),
                    obscureText: true),
                const SizedBox(height: 15),

                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    final loading = state is SignUpLoading;
                    return ElevatedButton(
                      onPressed: loading
                          ? null
                          : () {
                        context.read<SignUpBloc>().add(
                          SignUpButtonEvent(
                            User(
                              name: nameCtrl.text.trim(),
                              email: emailCtrl.text.trim(),
                              phone: phoneCtrl.text.trim(),
                              password: passCtrl.text.trim(),
                              image: nameCtrl.text.substring(0),
                            ),
                          ),
                        );
                      },
                      child: loading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text("Sign Up"),
                    );
                  },
                ),

                TextButton(
                  onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                  child: const Text("I already have an account"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
