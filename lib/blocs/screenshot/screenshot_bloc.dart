import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';

part 'screenshot_event.dart';
part 'screenshot_state.dart';

class ScreenshotBloc extends Bloc<ScreenshotEvent, ScreenshotState> {
  ScreenshotBloc() : super(const ScreenshotState()) {
    on<SelectScreenshots>(_handleSelectScreenshots);
  }

  void _handleSelectScreenshots(
      SelectScreenshots event, Emitter<ScreenshotState> emit) async {
    emit(state.copyWith(
        screenshots: event.screenshots, initialPage: event.index));
  }
}
