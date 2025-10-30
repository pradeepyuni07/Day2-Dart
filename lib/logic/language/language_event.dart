import 'package:equatable/equatable.dart';

class LanguageEvent extends Equatable {
  final String lang_type;

  LanguageEvent(this.lang_type);
  List<Object?> get props => [lang_type];
}
