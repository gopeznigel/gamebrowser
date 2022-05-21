part of 'new_game_bloc.dart';

enum NewGameStatus { initial, loading, loaded, error }

extension NewGameStatusX on NewGameStatus {
  bool get isInitial => this == NewGameStatus.initial;
  bool get isLoading => this == NewGameStatus.loading;
  bool get isLoaded => this == NewGameStatus.loaded;
  bool get isError => this == NewGameStatus.error;
}

class NewGameState extends Equatable {
  final GamesDto? games;
  final GameDto? selectedGame;
  final NewGameStatus status;

  const NewGameState({
    this.games,
    this.selectedGame,
    this.status = NewGameStatus.initial,
  });

  @override
  List<Object?> get props => [games, selectedGame, status];

  NewGameState copyWith(
      {GamesDto? games, GameDto? selectedGame, NewGameStatus? status}) {
    return NewGameState(
      games: games ?? this.games,
      selectedGame: selectedGame ?? this.selectedGame,
      status: status ?? this.status,
    );
  }
}
