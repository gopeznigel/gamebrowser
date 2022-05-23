// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamesDto> _$gamesDtoSerializer = new _$GamesDtoSerializer();
Serializer<GenresDto> _$genresDtoSerializer = new _$GenresDtoSerializer();
Serializer<GameDto> _$gameDtoSerializer = new _$GameDtoSerializer();
Serializer<ShortScreenshotDto> _$shortScreenshotDtoSerializer =
    new _$ShortScreenshotDtoSerializer();
Serializer<GameDetailsDto> _$gameDetailsDtoSerializer =
    new _$GameDetailsDtoSerializer();
Serializer<PlatformDto> _$platformDtoSerializer = new _$PlatformDtoSerializer();
Serializer<CommonDetailsDto> _$commonDetailsDtoSerializer =
    new _$CommonDetailsDtoSerializer();

class _$GamesDtoSerializer implements StructuredSerializer<GamesDto> {
  @override
  final Iterable<Type> types = const [GamesDto, _$GamesDto];
  @override
  final String wireName = 'GamesDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GamesDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GameDto)])));
    }
    return result;
  }

  @override
  GamesDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GamesDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GameDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenresDtoSerializer implements StructuredSerializer<GenresDto> {
  @override
  final Iterable<Type> types = const [GenresDto, _$GenresDto];
  @override
  final String wireName = 'GenresDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GenresDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    return result;
  }

  @override
  GenresDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenresDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GameDtoSerializer implements StructuredSerializer<GameDto> {
  @override
  final Iterable<Type> types = const [GameDto, _$GameDto];
  @override
  final String wireName = 'GameDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.released;
    if (value != null) {
      result
        ..add('released')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tba;
    if (value != null) {
      result
        ..add('tba')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.backgroundImage;
    if (value != null) {
      result
        ..add('background_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ratingTop;
    if (value != null) {
      result
        ..add('rating_top')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratingsCount;
    if (value != null) {
      result
        ..add('ratings_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewsTextCount;
    if (value != null) {
      result
        ..add('reviews_text_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.added;
    if (value != null) {
      result
        ..add('added')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.metacritic;
    if (value != null) {
      result
        ..add('metacritic')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.playtime;
    if (value != null) {
      result
        ..add('playtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.suggestionsCount;
    if (value != null) {
      result
        ..add('suggestions_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewsCount;
    if (value != null) {
      result
        ..add('reviews_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    value = object.screenshots;
    if (value != null) {
      result
        ..add('short_screenshots')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ShortScreenshotDto)])));
    }
    value = object.platforms;
    if (value != null) {
      result
        ..add('platforms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlatformDto)])));
    }
    value = object.esrbRating;
    if (value != null) {
      result
        ..add('esrb_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CommonDetailsDto)));
    }
    return result;
  }

  @override
  GameDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tba':
          result.tba = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'background_image':
          result.backgroundImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'rating_top':
          result.ratingTop = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratings_count':
          result.ratingsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviews_text_count':
          result.reviewsTextCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'added':
          result.added = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'metacritic':
          result.metacritic = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'playtime':
          result.playtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'suggestions_count':
          result.suggestionsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviews_count':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
        case 'short_screenshots':
          result.screenshots.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ShortScreenshotDto)]))!
              as BuiltList<Object?>);
          break;
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlatformDto)]))!
              as BuiltList<Object?>);
          break;
        case 'esrb_rating':
          result.esrbRating.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommonDetailsDto))!
              as CommonDetailsDto);
          break;
      }
    }

    return result.build();
  }
}

class _$ShortScreenshotDtoSerializer
    implements StructuredSerializer<ShortScreenshotDto> {
  @override
  final Iterable<Type> types = const [ShortScreenshotDto, _$ShortScreenshotDto];
  @override
  final String wireName = 'ShortScreenshotDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ShortScreenshotDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ShortScreenshotDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortScreenshotDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GameDetailsDtoSerializer
    implements StructuredSerializer<GameDetailsDto> {
  @override
  final Iterable<Type> types = const [GameDetailsDto, _$GameDetailsDto];
  @override
  final String wireName = 'GameDetailsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameDetailsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'name_original',
      serializers.serialize(object.nameOriginal,
          specifiedType: const FullType(String)),
      'description_raw',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.metacritic;
    if (value != null) {
      result
        ..add('metacritic')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    value = object.ratingsCount;
    if (value != null) {
      result
        ..add('ratings_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.backgroundImage;
    if (value != null) {
      result
        ..add('background_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishers;
    if (value != null) {
      result
        ..add('publishers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    value = object.developers;
    if (value != null) {
      result
        ..add('developers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonDetailsDto)])));
    }
    return result;
  }

  @override
  GameDetailsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameDetailsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name_original':
          result.nameOriginal = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description_raw':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'metacritic':
          result.metacritic = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
        case 'ratings_count':
          result.ratingsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'background_image':
          result.backgroundImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publishers':
          result.publishers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
        case 'developers':
          result.developers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonDetailsDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PlatformDtoSerializer implements StructuredSerializer<PlatformDto> {
  @override
  final Iterable<Type> types = const [PlatformDto, _$PlatformDto];
  @override
  final String wireName = 'PlatformDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlatformDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.platform;
    if (value != null) {
      result
        ..add('platform')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CommonDetailsDto)));
    }
    return result;
  }

  @override
  PlatformDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatformDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platform':
          result.platform.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommonDetailsDto))!
              as CommonDetailsDto);
          break;
      }
    }

    return result.build();
  }
}

class _$CommonDetailsDtoSerializer
    implements StructuredSerializer<CommonDetailsDto> {
  @override
  final Iterable<Type> types = const [CommonDetailsDto, _$CommonDetailsDto];
  @override
  final String wireName = 'CommonDetailsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommonDetailsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommonDetailsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommonDetailsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GamesDto extends GamesDto {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<GameDto>? results;

  factory _$GamesDto([void Function(GamesDtoBuilder)? updates]) =>
      (new GamesDtoBuilder()..update(updates))._build();

  _$GamesDto._({this.count, this.next, this.previous, this.results})
      : super._();

  @override
  GamesDto rebuild(void Function(GamesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GamesDtoBuilder toBuilder() => new GamesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GamesDto &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GamesDto')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class GamesDtoBuilder implements Builder<GamesDto, GamesDtoBuilder> {
  _$GamesDto? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<GameDto>? _results;
  ListBuilder<GameDto> get results =>
      _$this._results ??= new ListBuilder<GameDto>();
  set results(ListBuilder<GameDto>? results) => _$this._results = results;

  GamesDtoBuilder();

  GamesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GamesDto;
  }

  @override
  void update(void Function(GamesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GamesDto build() => _build();

  _$GamesDto _build() {
    _$GamesDto _$result;
    try {
      _$result = _$v ??
          new _$GamesDto._(
              count: count,
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GamesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GenresDto extends GenresDto {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<CommonDetailsDto>? results;

  factory _$GenresDto([void Function(GenresDtoBuilder)? updates]) =>
      (new GenresDtoBuilder()..update(updates))._build();

  _$GenresDto._({this.count, this.next, this.previous, this.results})
      : super._();

  @override
  GenresDto rebuild(void Function(GenresDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenresDtoBuilder toBuilder() => new GenresDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenresDto &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenresDto')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class GenresDtoBuilder implements Builder<GenresDto, GenresDtoBuilder> {
  _$GenresDto? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<CommonDetailsDto>? _results;
  ListBuilder<CommonDetailsDto> get results =>
      _$this._results ??= new ListBuilder<CommonDetailsDto>();
  set results(ListBuilder<CommonDetailsDto>? results) =>
      _$this._results = results;

  GenresDtoBuilder();

  GenresDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenresDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenresDto;
  }

  @override
  void update(void Function(GenresDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenresDto build() => _build();

  _$GenresDto _build() {
    _$GenresDto _$result;
    try {
      _$result = _$v ??
          new _$GenresDto._(
              count: count,
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenresDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GameDto extends GameDto {
  @override
  final int id;
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final String? released;
  @override
  final bool? tba;
  @override
  final String? backgroundImage;
  @override
  final double? rating;
  @override
  final int? ratingTop;
  @override
  final int? ratingsCount;
  @override
  final int? reviewsTextCount;
  @override
  final int? added;
  @override
  final int? metacritic;
  @override
  final int? playtime;
  @override
  final int? suggestionsCount;
  @override
  final String? updated;
  @override
  final int? reviewsCount;
  @override
  final BuiltList<CommonDetailsDto>? genres;
  @override
  final BuiltList<CommonDetailsDto>? tags;
  @override
  final BuiltList<ShortScreenshotDto>? screenshots;
  @override
  final BuiltList<PlatformDto>? platforms;
  @override
  final CommonDetailsDto? esrbRating;

  factory _$GameDto([void Function(GameDtoBuilder)? updates]) =>
      (new GameDtoBuilder()..update(updates))._build();

  _$GameDto._(
      {required this.id,
      this.slug,
      this.name,
      this.released,
      this.tba,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratingsCount,
      this.reviewsTextCount,
      this.added,
      this.metacritic,
      this.playtime,
      this.suggestionsCount,
      this.updated,
      this.reviewsCount,
      this.genres,
      this.tags,
      this.screenshots,
      this.platforms,
      this.esrbRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GameDto', 'id');
  }

  @override
  GameDto rebuild(void Function(GameDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameDtoBuilder toBuilder() => new GameDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameDto &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        released == other.released &&
        tba == other.tba &&
        backgroundImage == other.backgroundImage &&
        rating == other.rating &&
        ratingTop == other.ratingTop &&
        ratingsCount == other.ratingsCount &&
        reviewsTextCount == other.reviewsTextCount &&
        added == other.added &&
        metacritic == other.metacritic &&
        playtime == other.playtime &&
        suggestionsCount == other.suggestionsCount &&
        updated == other.updated &&
        reviewsCount == other.reviewsCount &&
        genres == other.genres &&
        tags == other.tags &&
        screenshots == other.screenshots &&
        platforms == other.platforms &&
        esrbRating == other.esrbRating;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, id.hashCode), slug.hashCode),
                                                                                name.hashCode),
                                                                            released.hashCode),
                                                                        tba.hashCode),
                                                                    backgroundImage.hashCode),
                                                                rating.hashCode),
                                                            ratingTop.hashCode),
                                                        ratingsCount.hashCode),
                                                    reviewsTextCount.hashCode),
                                                added.hashCode),
                                            metacritic.hashCode),
                                        playtime.hashCode),
                                    suggestionsCount.hashCode),
                                updated.hashCode),
                            reviewsCount.hashCode),
                        genres.hashCode),
                    tags.hashCode),
                screenshots.hashCode),
            platforms.hashCode),
        esrbRating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameDto')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('released', released)
          ..add('tba', tba)
          ..add('backgroundImage', backgroundImage)
          ..add('rating', rating)
          ..add('ratingTop', ratingTop)
          ..add('ratingsCount', ratingsCount)
          ..add('reviewsTextCount', reviewsTextCount)
          ..add('added', added)
          ..add('metacritic', metacritic)
          ..add('playtime', playtime)
          ..add('suggestionsCount', suggestionsCount)
          ..add('updated', updated)
          ..add('reviewsCount', reviewsCount)
          ..add('genres', genres)
          ..add('tags', tags)
          ..add('screenshots', screenshots)
          ..add('platforms', platforms)
          ..add('esrbRating', esrbRating))
        .toString();
  }
}

class GameDtoBuilder implements Builder<GameDto, GameDtoBuilder> {
  _$GameDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _released;
  String? get released => _$this._released;
  set released(String? released) => _$this._released = released;

  bool? _tba;
  bool? get tba => _$this._tba;
  set tba(bool? tba) => _$this._tba = tba;

  String? _backgroundImage;
  String? get backgroundImage => _$this._backgroundImage;
  set backgroundImage(String? backgroundImage) =>
      _$this._backgroundImage = backgroundImage;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _ratingTop;
  int? get ratingTop => _$this._ratingTop;
  set ratingTop(int? ratingTop) => _$this._ratingTop = ratingTop;

  int? _ratingsCount;
  int? get ratingsCount => _$this._ratingsCount;
  set ratingsCount(int? ratingsCount) => _$this._ratingsCount = ratingsCount;

  int? _reviewsTextCount;
  int? get reviewsTextCount => _$this._reviewsTextCount;
  set reviewsTextCount(int? reviewsTextCount) =>
      _$this._reviewsTextCount = reviewsTextCount;

  int? _added;
  int? get added => _$this._added;
  set added(int? added) => _$this._added = added;

  int? _metacritic;
  int? get metacritic => _$this._metacritic;
  set metacritic(int? metacritic) => _$this._metacritic = metacritic;

  int? _playtime;
  int? get playtime => _$this._playtime;
  set playtime(int? playtime) => _$this._playtime = playtime;

  int? _suggestionsCount;
  int? get suggestionsCount => _$this._suggestionsCount;
  set suggestionsCount(int? suggestionsCount) =>
      _$this._suggestionsCount = suggestionsCount;

  String? _updated;
  String? get updated => _$this._updated;
  set updated(String? updated) => _$this._updated = updated;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  ListBuilder<CommonDetailsDto>? _genres;
  ListBuilder<CommonDetailsDto> get genres =>
      _$this._genres ??= new ListBuilder<CommonDetailsDto>();
  set genres(ListBuilder<CommonDetailsDto>? genres) => _$this._genres = genres;

  ListBuilder<CommonDetailsDto>? _tags;
  ListBuilder<CommonDetailsDto> get tags =>
      _$this._tags ??= new ListBuilder<CommonDetailsDto>();
  set tags(ListBuilder<CommonDetailsDto>? tags) => _$this._tags = tags;

  ListBuilder<ShortScreenshotDto>? _screenshots;
  ListBuilder<ShortScreenshotDto> get screenshots =>
      _$this._screenshots ??= new ListBuilder<ShortScreenshotDto>();
  set screenshots(ListBuilder<ShortScreenshotDto>? screenshots) =>
      _$this._screenshots = screenshots;

  ListBuilder<PlatformDto>? _platforms;
  ListBuilder<PlatformDto> get platforms =>
      _$this._platforms ??= new ListBuilder<PlatformDto>();
  set platforms(ListBuilder<PlatformDto>? platforms) =>
      _$this._platforms = platforms;

  CommonDetailsDtoBuilder? _esrbRating;
  CommonDetailsDtoBuilder get esrbRating =>
      _$this._esrbRating ??= new CommonDetailsDtoBuilder();
  set esrbRating(CommonDetailsDtoBuilder? esrbRating) =>
      _$this._esrbRating = esrbRating;

  GameDtoBuilder();

  GameDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _released = $v.released;
      _tba = $v.tba;
      _backgroundImage = $v.backgroundImage;
      _rating = $v.rating;
      _ratingTop = $v.ratingTop;
      _ratingsCount = $v.ratingsCount;
      _reviewsTextCount = $v.reviewsTextCount;
      _added = $v.added;
      _metacritic = $v.metacritic;
      _playtime = $v.playtime;
      _suggestionsCount = $v.suggestionsCount;
      _updated = $v.updated;
      _reviewsCount = $v.reviewsCount;
      _genres = $v.genres?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _screenshots = $v.screenshots?.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _esrbRating = $v.esrbRating?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameDto;
  }

  @override
  void update(void Function(GameDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameDto build() => _build();

  _$GameDto _build() {
    _$GameDto _$result;
    try {
      _$result = _$v ??
          new _$GameDto._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'GameDto', 'id'),
              slug: slug,
              name: name,
              released: released,
              tba: tba,
              backgroundImage: backgroundImage,
              rating: rating,
              ratingTop: ratingTop,
              ratingsCount: ratingsCount,
              reviewsTextCount: reviewsTextCount,
              added: added,
              metacritic: metacritic,
              playtime: playtime,
              suggestionsCount: suggestionsCount,
              updated: updated,
              reviewsCount: reviewsCount,
              genres: _genres?.build(),
              tags: _tags?.build(),
              screenshots: _screenshots?.build(),
              platforms: _platforms?.build(),
              esrbRating: _esrbRating?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'screenshots';
        _screenshots?.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'esrbRating';
        _esrbRating?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ShortScreenshotDto extends ShortScreenshotDto {
  @override
  final int id;
  @override
  final String image;

  factory _$ShortScreenshotDto(
          [void Function(ShortScreenshotDtoBuilder)? updates]) =>
      (new ShortScreenshotDtoBuilder()..update(updates))._build();

  _$ShortScreenshotDto._({required this.id, required this.image}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ShortScreenshotDto', 'id');
    BuiltValueNullFieldError.checkNotNull(image, 'ShortScreenshotDto', 'image');
  }

  @override
  ShortScreenshotDto rebuild(
          void Function(ShortScreenshotDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortScreenshotDtoBuilder toBuilder() =>
      new ShortScreenshotDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortScreenshotDto &&
        id == other.id &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShortScreenshotDto')
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class ShortScreenshotDtoBuilder
    implements Builder<ShortScreenshotDto, ShortScreenshotDtoBuilder> {
  _$ShortScreenshotDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ShortScreenshotDtoBuilder();

  ShortScreenshotDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortScreenshotDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShortScreenshotDto;
  }

  @override
  void update(void Function(ShortScreenshotDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortScreenshotDto build() => _build();

  _$ShortScreenshotDto _build() {
    final _$result = _$v ??
        new _$ShortScreenshotDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ShortScreenshotDto', 'id'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'ShortScreenshotDto', 'image'));
    replace(_$result);
    return _$result;
  }
}

class _$GameDetailsDto extends GameDetailsDto {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final String nameOriginal;
  @override
  final String description;
  @override
  final int? metacritic;
  @override
  final double rating;
  @override
  final BuiltList<CommonDetailsDto>? genres;
  @override
  final BuiltList<CommonDetailsDto>? tags;
  @override
  final int? ratingsCount;
  @override
  final String? backgroundImage;
  @override
  final BuiltList<CommonDetailsDto>? publishers;
  @override
  final BuiltList<CommonDetailsDto>? developers;

  factory _$GameDetailsDto([void Function(GameDetailsDtoBuilder)? updates]) =>
      (new GameDetailsDtoBuilder()..update(updates))._build();

  _$GameDetailsDto._(
      {required this.id,
      required this.slug,
      required this.name,
      required this.nameOriginal,
      required this.description,
      this.metacritic,
      required this.rating,
      this.genres,
      this.tags,
      this.ratingsCount,
      this.backgroundImage,
      this.publishers,
      this.developers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GameDetailsDto', 'id');
    BuiltValueNullFieldError.checkNotNull(slug, 'GameDetailsDto', 'slug');
    BuiltValueNullFieldError.checkNotNull(name, 'GameDetailsDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        nameOriginal, 'GameDetailsDto', 'nameOriginal');
    BuiltValueNullFieldError.checkNotNull(
        description, 'GameDetailsDto', 'description');
    BuiltValueNullFieldError.checkNotNull(rating, 'GameDetailsDto', 'rating');
  }

  @override
  GameDetailsDto rebuild(void Function(GameDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameDetailsDtoBuilder toBuilder() =>
      new GameDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameDetailsDto &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        nameOriginal == other.nameOriginal &&
        description == other.description &&
        metacritic == other.metacritic &&
        rating == other.rating &&
        genres == other.genres &&
        tags == other.tags &&
        ratingsCount == other.ratingsCount &&
        backgroundImage == other.backgroundImage &&
        publishers == other.publishers &&
        developers == other.developers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    slug.hashCode),
                                                name.hashCode),
                                            nameOriginal.hashCode),
                                        description.hashCode),
                                    metacritic.hashCode),
                                rating.hashCode),
                            genres.hashCode),
                        tags.hashCode),
                    ratingsCount.hashCode),
                backgroundImage.hashCode),
            publishers.hashCode),
        developers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameDetailsDto')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('nameOriginal', nameOriginal)
          ..add('description', description)
          ..add('metacritic', metacritic)
          ..add('rating', rating)
          ..add('genres', genres)
          ..add('tags', tags)
          ..add('ratingsCount', ratingsCount)
          ..add('backgroundImage', backgroundImage)
          ..add('publishers', publishers)
          ..add('developers', developers))
        .toString();
  }
}

class GameDetailsDtoBuilder
    implements Builder<GameDetailsDto, GameDetailsDtoBuilder> {
  _$GameDetailsDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameOriginal;
  String? get nameOriginal => _$this._nameOriginal;
  set nameOriginal(String? nameOriginal) => _$this._nameOriginal = nameOriginal;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _metacritic;
  int? get metacritic => _$this._metacritic;
  set metacritic(int? metacritic) => _$this._metacritic = metacritic;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  ListBuilder<CommonDetailsDto>? _genres;
  ListBuilder<CommonDetailsDto> get genres =>
      _$this._genres ??= new ListBuilder<CommonDetailsDto>();
  set genres(ListBuilder<CommonDetailsDto>? genres) => _$this._genres = genres;

  ListBuilder<CommonDetailsDto>? _tags;
  ListBuilder<CommonDetailsDto> get tags =>
      _$this._tags ??= new ListBuilder<CommonDetailsDto>();
  set tags(ListBuilder<CommonDetailsDto>? tags) => _$this._tags = tags;

  int? _ratingsCount;
  int? get ratingsCount => _$this._ratingsCount;
  set ratingsCount(int? ratingsCount) => _$this._ratingsCount = ratingsCount;

  String? _backgroundImage;
  String? get backgroundImage => _$this._backgroundImage;
  set backgroundImage(String? backgroundImage) =>
      _$this._backgroundImage = backgroundImage;

  ListBuilder<CommonDetailsDto>? _publishers;
  ListBuilder<CommonDetailsDto> get publishers =>
      _$this._publishers ??= new ListBuilder<CommonDetailsDto>();
  set publishers(ListBuilder<CommonDetailsDto>? publishers) =>
      _$this._publishers = publishers;

  ListBuilder<CommonDetailsDto>? _developers;
  ListBuilder<CommonDetailsDto> get developers =>
      _$this._developers ??= new ListBuilder<CommonDetailsDto>();
  set developers(ListBuilder<CommonDetailsDto>? developers) =>
      _$this._developers = developers;

  GameDetailsDtoBuilder();

  GameDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _nameOriginal = $v.nameOriginal;
      _description = $v.description;
      _metacritic = $v.metacritic;
      _rating = $v.rating;
      _genres = $v.genres?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _ratingsCount = $v.ratingsCount;
      _backgroundImage = $v.backgroundImage;
      _publishers = $v.publishers?.toBuilder();
      _developers = $v.developers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameDetailsDto;
  }

  @override
  void update(void Function(GameDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameDetailsDto build() => _build();

  _$GameDetailsDto _build() {
    _$GameDetailsDto _$result;
    try {
      _$result = _$v ??
          new _$GameDetailsDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GameDetailsDto', 'id'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GameDetailsDto', 'slug'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GameDetailsDto', 'name'),
              nameOriginal: BuiltValueNullFieldError.checkNotNull(
                  nameOriginal, 'GameDetailsDto', 'nameOriginal'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'GameDetailsDto', 'description'),
              metacritic: metacritic,
              rating: BuiltValueNullFieldError.checkNotNull(
                  rating, 'GameDetailsDto', 'rating'),
              genres: _genres?.build(),
              tags: _tags?.build(),
              ratingsCount: ratingsCount,
              backgroundImage: backgroundImage,
              publishers: _publishers?.build(),
              developers: _developers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'publishers';
        _publishers?.build();
        _$failedField = 'developers';
        _developers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameDetailsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PlatformDto extends PlatformDto {
  @override
  final CommonDetailsDto? platform;

  factory _$PlatformDto([void Function(PlatformDtoBuilder)? updates]) =>
      (new PlatformDtoBuilder()..update(updates))._build();

  _$PlatformDto._({this.platform}) : super._();

  @override
  PlatformDto rebuild(void Function(PlatformDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformDtoBuilder toBuilder() => new PlatformDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformDto && platform == other.platform;
  }

  @override
  int get hashCode {
    return $jf($jc(0, platform.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlatformDto')
          ..add('platform', platform))
        .toString();
  }
}

class PlatformDtoBuilder implements Builder<PlatformDto, PlatformDtoBuilder> {
  _$PlatformDto? _$v;

  CommonDetailsDtoBuilder? _platform;
  CommonDetailsDtoBuilder get platform =>
      _$this._platform ??= new CommonDetailsDtoBuilder();
  set platform(CommonDetailsDtoBuilder? platform) =>
      _$this._platform = platform;

  PlatformDtoBuilder();

  PlatformDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformDto;
  }

  @override
  void update(void Function(PlatformDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformDto build() => _build();

  _$PlatformDto _build() {
    _$PlatformDto _$result;
    try {
      _$result = _$v ?? new _$PlatformDto._(platform: _platform?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platform';
        _platform?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlatformDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommonDetailsDto extends CommonDetailsDto {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;

  factory _$CommonDetailsDto(
          [void Function(CommonDetailsDtoBuilder)? updates]) =>
      (new CommonDetailsDtoBuilder()..update(updates))._build();

  _$CommonDetailsDto._({this.id, this.name, this.slug}) : super._();

  @override
  CommonDetailsDto rebuild(void Function(CommonDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonDetailsDtoBuilder toBuilder() =>
      new CommonDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonDetailsDto &&
        id == other.id &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonDetailsDto')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class CommonDetailsDtoBuilder
    implements Builder<CommonDetailsDto, CommonDetailsDtoBuilder> {
  _$CommonDetailsDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  CommonDetailsDtoBuilder();

  CommonDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommonDetailsDto;
  }

  @override
  void update(void Function(CommonDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommonDetailsDto build() => _build();

  _$CommonDetailsDto _build() {
    final _$result =
        _$v ?? new _$CommonDetailsDto._(id: id, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
