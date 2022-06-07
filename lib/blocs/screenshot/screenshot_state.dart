part of 'screenshot_bloc.dart';

enum ScreenshotStatus { initial, loading, loaded, error }

extension ScreenshotStatusX on ScreenshotStatus {
  bool get isInitial => this == ScreenshotStatus.initial;
  bool get isLoaded => this == ScreenshotStatus.loaded;
  bool get isError => this == ScreenshotStatus.error;
}

class ScreenshotState extends Equatable {
  final List<ShortScreenshotDto>? screenshots;
  final int initialPage;
  final ScreenshotStatus status;

  const ScreenshotState({
    this.screenshots,
    this.initialPage = 0,
    this.status = ScreenshotStatus.initial,
  });

  @override
  List<Object?> get props => [screenshots, initialPage, status];

  ScreenshotState copyWith(
      {List<ShortScreenshotDto>? screenshots,
      int? initialPage,
      ScreenshotStatus? status}) {
    return ScreenshotState(
      screenshots: screenshots ?? this.screenshots,
      initialPage: initialPage ?? this.initialPage,
      status: status ?? this.status,
    );
  }
}
