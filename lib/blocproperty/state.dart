import 'dart:ui';

abstract class ColorState {
  final Color color;
  final int count;

  ColorState({required this.color, required this.count});
}

class ActiveColorState extends ColorState {
  ActiveColorState({required Color color, required int count})
    : super(color: color, count: count);

  ActiveColorState copyWith({Color? color, int? count}) {
    return ActiveColorState(
      color: color ?? this.color,
      count: count ?? this.count,
    );
  }
}
