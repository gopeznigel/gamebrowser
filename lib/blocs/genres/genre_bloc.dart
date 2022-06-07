import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';

part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final GameRepository repository;
  final GameBloc gameBloc;

  GenreBloc({required this.repository, required this.gameBloc})
      : super(const GenreState()) {
    on<GetAllGenres>(_handleGetAllGenres);
    on<SelectGenre>(_handleSelectGenre);
  }

  void _handleGetAllGenres(GetAllGenres event, Emitter<GenreState> emit) async {
    try {
      emit(state.copyWith(status: GenreStatus.loading));

      final genres = await repository.getGenres();

      emit(state.copyWith(status: GenreStatus.loaded, genres: genres));
    } catch (error) {
      emit(state.copyWith(status: GenreStatus.error));
    }
  }

  void _handleSelectGenre(SelectGenre event, Emitter<GenreState> emit) {
    emit(state.copyWith(selectedGenre: event.selectedGenre));

    gameBloc.add(GetGamesByGenre(genreId: event.selectedGenre.id));
  }
}
