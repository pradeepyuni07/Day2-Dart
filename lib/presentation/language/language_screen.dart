import 'package:bloc_project/core/constants/string_constants.dart';
import 'package:bloc_project/logic/language/language_bloc.dart';
import 'package:bloc_project/logic/language/language_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../core/themes/app_text_style.dart';
import '../../logic/language/language_state.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstants.selectLanguage.tr,
          style: AppTextStyle.titleStyle16bw,
        ),
      ),
      body: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  context.read<LanguageBloc>().add(LanguageEvent("english"));
                },
                child: Text(
                  StringConstants.english,
                  style: AppTextStyle.titleStyle16bw,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<LanguageBloc>().add( LanguageEvent("hindi"));
                },
                child: Text(
                  StringConstants.hindi,
                  style: AppTextStyle.titleStyle16bw,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
