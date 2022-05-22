import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository repository;

  GameBloc({required this.repository}) : super(const GameState()) {
    on<GetAllGames>(_handleGetAllGames);
    on<GetGamesByGenre>(_handleGetGamesByGenre);
    on<SelectGame>(_handleSelectGame);
    on<RemoveSelectedGame>(_handleRemoveSelectedGame);
  }

  void _handleGetAllGames(GetAllGames event, Emitter<GameState> emit) async {
    try {
      emit(state.copyWith(status: GamesStatus.loading));

      final games = await repository.getAllGames();

      emit(state.copyWith(status: GamesStatus.loaded, games: games));
    } catch (error) {
      emit(state.copyWith(status: GamesStatus.error));
    }
  }

  void _handleGetGamesByGenre(
      GetGamesByGenre event, Emitter<GameState> emit) async {
    try {
      emit(state.copyWith(status: GamesStatus.loading));

      final games = await repository.getGamesByGenre(event.genreId!);

      emit(state.copyWith(status: GamesStatus.loaded, games: games));
    } catch (error) {
      emit(state.copyWith(status: GamesStatus.error));
    }
  }

  void _handleSelectGame(SelectGame event, Emitter<GameState> emit) {
    emit(state.copyWith(selectedGame: event.gameDto));
  }

  void _handleRemoveSelectedGame(
      RemoveSelectedGame event, Emitter<GameState> emit) {
    emit(state.copyWith(selectedGame: null));
  }
}
