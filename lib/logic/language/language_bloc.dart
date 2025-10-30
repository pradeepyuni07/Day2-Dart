import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'language_event.dart';
import 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<LanguageEvent>(_languageEvent);
  }

  void _languageEvent(LanguageEvent event,Emitter emit){
    print("Language Changed To: ${event.lang_type}");

    if (event.lang_type == "english") {
      Get.updateLocale(const Locale('en', 'US'));
    } else if (event.lang_type == "hindi") {
      Get.updateLocale(const Locale('hi', 'IN'));
    }

    emit(state.copyWith(selectedLanguage: event.lang_type));
  }
}
