import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';

part 'view_game_event.dart';
part 'view_game_state.dart';

class ViewGameBloc extends Bloc<ViewGameEvent, ViewGameState> {
  final GameRepository repository;

  ViewGameBloc({
    required this.repository,
  }) : super(const ViewGameState()) {
    on<SelectGameToView>(_handleSelectGameToView);
  }

  void _handleSelectGameToView(
      SelectGameToView event, Emitter<ViewGameState> emit) async {
    try {
      emit(state.copyWith(
          status: GameDetialsStatus.loading,
          gameDto: event.gameDto,
          gameDetails: null));

      final gameDetails = await repository.getGameDetails(event.gameDto.id);

      emit(state.copyWith(
          gameDetails: gameDetails!, status: GameDetialsStatus.loaded));
    } catch (e) {
      emit(state.copyWith(gameDetails: null, status: GameDetialsStatus.error));
    }
  }
}
