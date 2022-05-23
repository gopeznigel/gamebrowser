part of 'genre_bloc.dart';

enum GenreStatus { initial, loading, loaded, error }

extension GenreStatusX on GenreStatus {
  bool get isInitial => this == GenreStatus.initial;
  bool get isLoading => this == GenreStatus.loading;
  bool get isLoaded => this == GenreStatus.loaded;
  bool get isError => this == GenreStatus.error;
}

class GenreState extends Equatable {
  final GenresDto? genres;
  final CommonDetailsDto? selectedGenre;
  final GenreStatus status;

  const GenreState({
    this.genres,
    this.selectedGenre,
    this.status = GenreStatus.initial,
  });

  @override
  List<Object?> get props => [genres, selectedGenre, status];

  GenreState copyWith(
      {GenresDto? genres,
      CommonDetailsDto? selectedGenre,
      GenreStatus? status}) {
    return GenreState(
      genres: genres ?? this.genres,
      selectedGenre: selectedGenre ?? this.selectedGenre,
      status: status ?? this.status,
    );
  }
}
