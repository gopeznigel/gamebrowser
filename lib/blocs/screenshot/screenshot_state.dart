part of 'screenshot_bloc.dart';

enum ScreenshotStatus { initial, loading, loaded, error }

extension ScreenshotStatusX on ScreenshotStatus {
  bool get isInitial => this == ScreenshotStatus.initial;
  bool get isLoaded => this == ScreenshotStatus.loaded;
  bool get isError => this == ScreenshotStatus.error;
}

class ScreenshotState extends Equatable {
  final List<ShortScreenshotDto>? screenshots;
  final int selectedIndex;
  final ScreenshotStatus status;

  const ScreenshotState({
    this.screenshots,
    this.selectedIndex = 0,
    this.status = ScreenshotStatus.initial,
  });

  @override
  List<Object?> get props => [screenshots, selectedIndex, status];

  ScreenshotState copyWith(
      {List<ShortScreenshotDto>? screenshots,
      int? selectedIndex,
      ScreenshotStatus? status}) {
    return ScreenshotState(
      screenshots: screenshots,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      status: status ?? this.status,
    );
  }
}
