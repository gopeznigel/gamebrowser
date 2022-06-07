import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';

part 'screenshot_event.dart';
part 'screenshot_state.dart';

class ScreenshotBloc extends Bloc<ScreenshotEvent, ScreenshotState> {
  ScreenshotBloc() : super(const ScreenshotState()) {
    on<SelectScreenshots>(_handleSelectScreenshots);
    on<RemoveScreenshots>(_handleRemoveScreenshots);
    on<SelectNextScreenshot>(_handleSelectNextScreenshot);
    on<SelectPreviousScreenshot>(_handlePreviousScreenshot);
  }

  void _handleSelectScreenshots(
      SelectScreenshots event, Emitter<ScreenshotState> emit) async {
    emit(state.copyWith(
        screenshots: event.screenshots, selectedIndex: event.index));
  }

  void _handleSelectNextScreenshot(
      SelectNextScreenshot event, Emitter<ScreenshotState> emit) async {
    int nextPage = state.selectedIndex + 1;

    if (nextPage > (state.screenshots!.length - 1)) {
      nextPage = state.selectedIndex;
    }

    emit(state.copyWith(selectedIndex: nextPage));
  }

  void _handlePreviousScreenshot(
      SelectPreviousScreenshot event, Emitter<ScreenshotState> emit) async {
    int prevPage = state.selectedIndex - 1;

    if (prevPage < 0) {
      prevPage = 0;
    }

    emit(state.copyWith(selectedIndex: prevPage));
  }

  void _handleRemoveScreenshots(
          RemoveScreenshots event, Emitter<ScreenshotState> emit) =>
      emit(state.copyWith(screenshots: null, status: ScreenshotStatus.initial));
}
