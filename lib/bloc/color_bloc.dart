import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:solid_test/utils/constants.dart';

part 'color_event.dart';

part 'color_state.dart';

/// BLoC for managing color changes
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  /// This BLoC is responsible for managing the color state and handling events
  /// related to color changes.
  ColorBloc() : super(ColorInitial()) {
    on<ChangeColor>(_eventChangeColor);
  }

  void _eventChangeColor(ChangeColor event, Emitter<ColorState> emit) {
    // Generation random color for background and text
    final Color randomBackgroundColor = generateRandomColor();
    final Color randomTextColor = generateRandomColor();

    emit(ColorChangedState(randomBackgroundColor, randomTextColor));
  }

  /// Generate random color
  Color generateRandomColor() {
    return Color(
      (math.Random().nextDouble() * whiteColor).toInt(),
    ).withOpacity(1);
  }
}
