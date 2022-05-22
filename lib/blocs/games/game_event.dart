part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllGames extends GameEvent {
  @override
  List<Object?> get props => [];
}

class GetGamesByGenre extends GameEvent {
  final int? genreId;

  GetGamesByGenre({this.genreId});

  @override
  List<Object?> get props => [genreId];
}

class SelectGame extends GameEvent {
  final GameDto gameDto;

  SelectGame({required this.gameDto});

  @override
  List<Object?> get props => [gameDto];
}

class RemoveSelectedGame extends GameEvent {
  @override
  List<Object?> get props => [];
}
