part of 'genre_bloc.dart';

abstract class GenreEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllGenres extends GenreEvent {
  @override
  List<Object?> get props => [];
}

class SelectGenre extends GenreEvent {
  final CommonDetailsDto selectedGenre;

  SelectGenre({required this.selectedGenre});

  @override
  List<Object?> get props => [selectedGenre];
}
