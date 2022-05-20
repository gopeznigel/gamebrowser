part of 'game_bloc.dart';

enum GamesStatus { initial, loading, loaded, error }

extension GamesStatusX on GamesStatus {
  bool get isInitial => this == GamesStatus.initial;
  bool get isLoading => this == GamesStatus.loading;
  bool get isLoaded => this == GamesStatus.loaded;
  bool get isError => this == GamesStatus.error;
}

class GameState extends Equatable {
  final GamesDto? games;
  final GameDto? selectedGame;
  final GamesStatus status;

  const GameState({
    this.games,
    this.selectedGame,
    this.status = GamesStatus.initial,
  });

  @override
  List<Object?> get props => [games, selectedGame, status];

  GameState copyWith(
      {GamesDto? games, GameDto? selectedGame, GamesStatus? status}) {
    return GameState(
      games: games ?? this.games,
      selectedGame: selectedGame ?? this.selectedGame,
      status: status ?? this.status,
    );
  }
}
