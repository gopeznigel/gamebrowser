part of 'view_game_bloc.dart';

abstract class ViewGameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectGameToView extends ViewGameEvent {
  final GameDto gameDto;

  SelectGameToView({required this.gameDto});

  @override
  List<Object?> get props => [gameDto];
}
