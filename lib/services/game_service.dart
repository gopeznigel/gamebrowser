import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:http/http.dart' as http;
import 'package:game_browser_using_bloc/models/serializers.dart';

class GameService {
  final String baseUrl = 'https://api.rawg.io/api';
  final http.Client client = http.Client();

  Future<GenresDto?> getGeneres() async {
    try {
      final http.Response response = await _get('genres');

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          return serializers.deserializeWith(
              GenresDto.serializer, json.decode(response.body));
        } else {
          throw Exception('Empty response');
        }
      } else {
        throw Exception('Error getting games');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<GamesDto?> getGames({int? genreId}) async {
    try {
      final http.Response response = await _get(
        'games',
        extraParameters: genreId != null
            ? <String, String>{
                'genres': genreId.toString(),
              }
            : null,
      );

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final data = utf8.decode(response.bodyBytes);
          final decoded = json.decode(data);

          return serializers.deserializeWith(GamesDto.serializer, decoded);
        } else {
          throw Exception('Empty response');
        }
      } else {
        final gameType = genreId != null ? 'Genre[$genreId]' : 'All';
        throw Exception('Error getting $gameType games');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<GameDetailsDto?> getGameDetails({int? id}) async {
    try {
      final http.Response response = await _get('games/$id');

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final data = utf8.decode(response.bodyBytes);
          final decoded = json.decode(data);

          return serializers.deserializeWith(
              GameDetailsDto.serializer, decoded);
        } else {
          throw Exception('Empty response');
        }
      } else {
        throw Exception('Error getting game details');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<GamesDto?> getNewGames() async {
    try {
      final http.Response response = await _get('games/lists/recent-games');

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final data = utf8.decode(response.bodyBytes);
          final decoded = json.decode(data);

          return serializers.deserializeWith(GamesDto.serializer, decoded);
        } else {
          throw Exception('Empty response');
        }
      } else {
        throw Exception('Error getting new games');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<http.Response> _get(String url,
      {Map<String, String>? extraParameters}) async {
    final queryParameters = <String, String>{
      'key': dotenv.get('API_KEY'),
    };

    if (extraParameters != null) {
      queryParameters.addAll(extraParameters);
    }

    final apiUrl = Uri.parse('$baseUrl/$url').replace(
      queryParameters: queryParameters,
    );

    try {
      return await client.get(
        apiUrl,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
