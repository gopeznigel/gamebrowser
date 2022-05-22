import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/new_games/new_game_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';

part 'view_game_event.dart';
part 'view_game_state.dart';

class ViewGameBloc extends Bloc<ViewGameEvent, ViewGameState> {
  final GameRepository repository;
  final NewGameBloc newGameBloc;
  final GameBloc gameBloc;
  late StreamSubscription subscription;

  ViewGameBloc({
    required this.repository,
    required this.newGameBloc,
    required this.gameBloc,
  }) : super(const ViewGameState()) {
    subscription = newGameBloc.stream.listen((state) {
      if (state.selectedGame != null) {
        debugPrint('Selected New Game ${state.selectedGame!.name}');
        add(SelectGameToView(gameDto: state.selectedGame!));
      }
    });

    subscription = gameBloc.stream.listen((state) {
      if (state.selectedGame != null) {
        debugPrint('Selected Game ${state.selectedGame!.name}');
        add(SelectGameToView(gameDto: state.selectedGame!));
      }
    });

    on<SelectGameToView>(_handleSelectGameToView);
  }

  void _handleSelectGameToView(
      SelectGameToView event, Emitter<ViewGameState> emit) async {
    try {
      emit(state.copyWith(
          status: GameDetialsStatus.loading, game: event.gameDto));

      final gameDetails = await repository.getGameDetails(event.gameDto.id);

      emit(state.copyWith(
          gameDetails: gameDetails!, status: GameDetialsStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: GameDetialsStatus.error));
    }
  }
}
