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
  BuiltList<CommonDetailsDto>? get results;
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
  @BuiltValueField(wireName: 'reviews_count')
  int? get reviewsCount;
  @BuiltValueField(wireName: 'genres')
  BuiltList<CommonDetailsDto>? get genres;
  @BuiltValueField(wireName: 'tags')
  BuiltList<CommonDetailsDto>? get tags;
  @BuiltValueField(wireName: 'short_screenshots')
  BuiltList<ShortScreenshotDto>? get screenshots;
  @BuiltValueField(wireName: 'platforms')
  BuiltList<PlatformDto>? get platforms;
  @BuiltValueField(wireName: 'esrb_rating')
  CommonDetailsDto? get esrbRating;
}

abstract class ShortScreenshotDto
    implements Built<ShortScreenshotDto, ShortScreenshotDtoBuilder> {
  factory ShortScreenshotDto([Function(ShortScreenshotDtoBuilder) updates]) =
      _$ShortScreenshotDto;

  ShortScreenshotDto._();

  static Serializer<ShortScreenshotDto> get serializer =>
      _$shortScreenshotDtoSerializer;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'image')
  String get image;
}

abstract class GameDetailsDto
    implements Built<GameDetailsDto, GameDetailsDtoBuilder> {
  factory GameDetailsDto([Function(GameDetailsDtoBuilder) updates]) =
      _$GameDetailsDto;

  GameDetailsDto._();

  static Serializer<GameDetailsDto> get serializer =>
      _$gameDetailsDtoSerializer;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'slug')
  String get slug;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'name_original')
  String get nameOriginal;
  @BuiltValueField(wireName: 'description_raw')
  String get description;
  @BuiltValueField(wireName: 'metacritic')
  int? get metacritic;
  @BuiltValueField(wireName: 'rating')
  double get rating;
  @BuiltValueField(wireName: 'genres')
  BuiltList<CommonDetailsDto>? get genres;
  @BuiltValueField(wireName: 'tags')
  BuiltList<CommonDetailsDto>? get tags;
  @BuiltValueField(wireName: 'ratings_count')
  int? get ratingsCount;
  @BuiltValueField(wireName: 'background_image')
  String? get backgroundImage;
  @BuiltValueField(wireName: 'publishers')
  BuiltList<CommonDetailsDto>? get publishers;
  @BuiltValueField(wireName: 'developers')
  BuiltList<CommonDetailsDto>? get developers;
}

abstract class PlatformDto implements Built<PlatformDto, PlatformDtoBuilder> {
  factory PlatformDto([Function(PlatformDtoBuilder) updates]) = _$PlatformDto;

  PlatformDto._();

  static Serializer<PlatformDto> get serializer => _$platformDtoSerializer;

  @BuiltValueField(wireName: 'platform')
  CommonDetailsDto? get platform;
}

abstract class CommonDetailsDto
    implements Built<CommonDetailsDto, CommonDetailsDtoBuilder> {
  factory CommonDetailsDto([Function(CommonDetailsDtoBuilder) updates]) =
      _$CommonDetailsDto;

  CommonDetailsDto._();

  static Serializer<CommonDetailsDto> get serializer =>
      _$commonDetailsDtoSerializer;

  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'slug')
  String? get slug;
}
