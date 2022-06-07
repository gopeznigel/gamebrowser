import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';

part 'new_game_event.dart';
part 'new_game_state.dart';

class NewGameBloc extends Bloc<NewGameEvent, NewGameState> {
  final GameRepository repository;

  NewGameBloc({required this.repository}) : super(const NewGameState()) {
    on<GetAllNewGames>(_handleGetAllNewGames);
    on<SelectNewGame>(_handleSelectNewGame);
  }

  void _handleGetAllNewGames(
      GetAllNewGames event, Emitter<NewGameState> emit) async {
    try {
      emit(state.copyWith(status: NewGameStatus.loading));

      final games = await repository.getAllNewGames();

      emit(state.copyWith(status: NewGameStatus.loaded, games: games));
    } catch (error) {
      emit(state.copyWith(status: NewGameStatus.error));
    }
  }

  void _handleSelectNewGame(SelectNewGame event, Emitter<NewGameState> emit) {
    emit(state.copyWith(selectedGame: event.gameDto));
  }
}
