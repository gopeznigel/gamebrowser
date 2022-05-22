part of 'new_game_bloc.dart';

abstract class NewGameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllNewGames extends NewGameEvent {
  @override
  List<Object?> get props => [];
}

class SelectNewGame extends NewGameEvent {
  final GameDto gameDto;

  SelectNewGame({required this.gameDto});

  @override
  List<Object?> get props => [gameDto];
}

class RemoveSelectedNewGame extends NewGameEvent {
  @override
  List<Object?> get props => [];
}
