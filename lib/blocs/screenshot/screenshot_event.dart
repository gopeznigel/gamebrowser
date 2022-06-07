part of 'screenshot_bloc.dart';

abstract class ScreenshotEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectScreenshots extends ScreenshotEvent {
  final List<ShortScreenshotDto> screenshots;
  final int index;

  SelectScreenshots({required this.screenshots, required this.index});

  @override
  List<Object?> get props => [screenshots];
}

class SelectPreviousScreenshot extends ScreenshotEvent {
  @override
  List<Object?> get props => [];
}

class SelectNextScreenshot extends ScreenshotEvent {
  @override
  List<Object?> get props => [];
}

class RemoveScreenshots extends ScreenshotEvent {
  @override
  List<Object?> get props => [];
}
