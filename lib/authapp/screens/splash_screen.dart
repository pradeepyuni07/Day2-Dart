import 'package:dart_app/authapp/screens/login_screen.dart';
import 'package:dart_app/authapp/splash/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../splash/splash_bloc.dart';
import '../splash/splash_event.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(StartSplashEvent()),
      child: Scaffold(
          backgroundColor: Colors.grey,
        body: BlocListener<SplashBloc,SplashState>(listener: (context,state){
             if(state is SplashFinished){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
             }

        },child: Center(child: Text("This is spalsh is screen",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),)
      ),
    );
  }
}
