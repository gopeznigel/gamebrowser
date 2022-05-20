/// Game Model
/// Run the command below to create generated files
/// [flutter pub run build_runner build]

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_dto.g.dart';

abstract class GamesDto implements Built<GamesDto, GamesDtoBuilder> {
  factory GamesDto([Function(GamesDtoBuilder) updates]) = _$GamesDto;

  GamesDto._();

  static Serializer<GamesDto> get serializer => _$gamesDtoSerializer;

  @BuiltValueField(wireName: 'count')
  int? get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<GameDto>? get results;
}

abstract class GenresDto implements Built<GenresDto, GenresDtoBuilder> {
  factory GenresDto([Function(GenresDtoBuilder) updates]) = _$GenresDto;

  GenresDto._();

  static Serializer<GenresDto> get serializer => _$genresDtoSerializer;

  @BuiltValueField(wireName: 'count')
  int? get count;
  @BuiltValueField(wireName: 'next')
  String? get next;
  @BuiltValueField(wireName: 'previous')
  String? get previous;
  @BuiltValueField(wireName: 'results')
  BuiltList<GenreDto>? get results;
}

abstract class GameDto implements Built<GameDto, GameDtoBuilder> {
  factory GameDto([Function(GameDtoBuilder) updates]) = _$GameDto;

  GameDto._();

  static Serializer<GameDto> get serializer => _$gameDtoSerializer;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'released')
  String? get released;
  @BuiltValueField(wireName: 'tba')
  bool? get tba;
  @BuiltValueField(wireName: 'background_image')
  String? get backgroundImage;
  @BuiltValueField(wireName: 'rating')
  double? get rating;
  @BuiltValueField(wireName: 'rating_top')
  int? get ratingTop;
  @BuiltValueField(wireName: 'ratings_count')
  int? get ratingsCount;
  @BuiltValueField(wireName: 'reviews_text_count')
  int? get reviewsTextCount;
  @BuiltValueField(wireName: 'added')
  int? get added;
  @BuiltValueField(wireName: 'metacritic')
  int? get metacritic;
  @BuiltValueField(wireName: 'playtime')
  int? get playtime;
  @BuiltValueField(wireName: 'suggestions_count')
  int? get suggestionsCount;
  @BuiltValueField(wireName: 'updated')
  String? get updated;
  // @BuiltValueField(wireName: 'user_game')
  // String? get userGame;
  // @BuiltValueField(wireName: 'reviews_count')
  // int? get reviewsCount;
  // @BuiltValueField(wireName: 'saturated_color')
  // String? get saturatedColor;
  // @BuiltValueField(wireName: 'dominant_color')
  // String? get dominantColor;
  // @BuiltValueField(wireName: 'genres')
  // BuiltList<GenreDto>? get genres;
  // @BuiltValueField(wireName: 'tags')
  // BuiltList<GenreDto>? get tags;
}

abstract class GenreDto implements Built<GenreDto, GenreDtoBuilder> {
  factory GenreDto([Function(GenreDtoBuilder) updates]) = _$GenreDto;

  GenreDto._();

  static Serializer<GenreDto> get serializer => _$genreDtoSerializer;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
  @BuiltValueField(wireName: 'language')
  String? get language;
  @BuiltValueField(wireName: 'games_count')
  int? get gamesCount;
  @BuiltValueField(wireName: 'image_background')
  String? get imageBackground;
}
