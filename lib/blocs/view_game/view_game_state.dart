part of 'view_game_bloc.dart';

abstract class ViewGameState extends Equatable {
  @override
  List<Object?> get props => [];
}

class GameSelected extends ViewGameState {
  final GameDto game;

  GameSelected({required this.game});

  @override
  List<Object?> get props => [game];
}

class NoGameSelected extends ViewGameState {
  @override
  List<Object?> get props => [];
}
