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
  final GameDto? gameDto;
  final GameDetialsStatus status;

  const ViewGameState(
      {this.gameDetails,
      this.gameDto,
      this.status = GameDetialsStatus.initial});

  @override
  List<Object?> get props => [gameDetails, status];

  ViewGameState copyWith(
      {GameDetailsDto? gameDetails,
      GameDto? gameDto,
      GameDetialsStatus? status}) {
    return ViewGameState(
      gameDetails: gameDetails ?? this.gameDetails,
      gameDto: gameDto ?? this.gameDto,
      status: status ?? this.status,
    );
  }
}
