part of 'color_bloc.dart';

/// Abstract basic class for Events
@immutable
abstract class ColorEvent {}

/// Event for changing color
class ChangeColor extends ColorEvent {}
