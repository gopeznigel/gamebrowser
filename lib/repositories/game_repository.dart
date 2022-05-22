import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/services/game_service.dart';

class GameRepository {
  final GameService _service;

  const GameRepository({required GameService service}) : _service = service;

  Future<GamesDto?> getAllGames() async {
    return await _service.getGames();
  }

  Future<GamesDto?> getAllNewGames() async {
    return await _service.getNewGames();
  }

  Future<GamesDto?> getGamesByGenre(int genreId) async {
    return await _service.getGames(genreId: genreId);
  }

  Future<GameDetailsDto?> getGameDetails(int gameId) async {
    return await _service.getGameDetails(id: gameId);
  }

  Future<GenresDto?> getGenres() async {
    return await _service.getGeneres();
  }
}
