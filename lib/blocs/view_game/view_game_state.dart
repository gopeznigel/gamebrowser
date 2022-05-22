part of 'view_game_bloc.dart';

enum GameDetialsStatus { initial, loading, loaded, error }

extension GameDetialsStatusX on GameDetialsStatus {
  bool get isInitial => this == GameDetialsStatus.initial;
  bool get isLoading => this == GameDetialsStatus.loading;
  bool get isLoaded => this == GameDetialsStatus.loaded;
  bool get isError => this == GameDetialsStatus.error;
}

class ViewGameState extends Equatable {
  final GameDetailsDto? gameDetails;
  final GameDto? game;
  final GameDetialsStatus status;

  const ViewGameState(
      {this.gameDetails, this.game, this.status = GameDetialsStatus.initial});

  @override
  List<Object?> get props => [gameDetails, status];

  ViewGameState copyWith(
      {GameDetailsDto? gameDetails, GameDto? game, GameDetialsStatus? status}) {
    return ViewGameState(
      gameDetails: gameDetails ?? this.gameDetails,
      game: game ?? this.game,
      status: status ?? this.status,
    );
  }
}
