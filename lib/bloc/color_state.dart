part of 'color_bloc.dart';

/// Abstract basic class for States
@immutable
abstract class ColorState {}

/// Initial State
class ColorInitial extends ColorState {}

///ColorChangedState - includes random colors
class ColorChangedState extends ColorState {
  /// Color for background
  final Color randomBackgroundColor;
  /// Color for text
  final Color randomTextColor;

  /// Class constructor
  ColorChangedState(this.randomBackgroundColor, this.randomTextColor);
}
