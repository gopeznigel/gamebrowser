import 'dart:convert';

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
          final data = response.body;
          final decoded = json.decode(data);

          return serializers.deserializeWith(GamesDto.serializer, decoded);
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
      return await client.get(apiUrl);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
