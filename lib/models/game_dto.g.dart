// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GamesDto> _$gamesDtoSerializer = new _$GamesDtoSerializer();
Serializer<GenresDto> _$genresDtoSerializer = new _$GenresDtoSerializer();
Serializer<GameDto> _$gameDtoSerializer = new _$GameDtoSerializer();
Serializer<GenreDto> _$genreDtoSerializer = new _$GenreDtoSerializer();

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
            specifiedType:
                const FullType(BuiltList, const [const FullType(GenreDto)])));
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
                      BuiltList, const [const FullType(GenreDto)]))!
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
            specifiedType:
                const FullType(BuiltList, const [const FullType(GenreDto)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(GenreDto)])));
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
                      BuiltList, const [const FullType(GenreDto)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenreDto)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreDtoSerializer implements StructuredSerializer<GenreDto> {
  @override
  final Iterable<Type> types = const [GenreDto, _$GenreDto];
  @override
  final String wireName = 'GenreDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, GenreDto object,
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
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gamesCount;
    if (value != null) {
      result
        ..add('games_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageBackground;
    if (value != null) {
      result
        ..add('image_background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GenreDto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreDtoBuilder();

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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'games_count':
          result.gamesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image_background':
          result.imageBackground = serializers.deserialize(value,
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
  final BuiltList<GenreDto>? results;

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

  ListBuilder<GenreDto>? _results;
  ListBuilder<GenreDto> get results =>
      _$this._results ??= new ListBuilder<GenreDto>();
  set results(ListBuilder<GenreDto>? results) => _$this._results = results;

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
  final BuiltList<GenreDto>? genres;
  @override
  final BuiltList<GenreDto>? tags;

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
      this.tags})
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
        tags == other.tags;
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
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        slug
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                released
                                                                    .hashCode),
                                                            tba.hashCode),
                                                        backgroundImage
                                                            .hashCode),
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
        tags.hashCode));
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
          ..add('tags', tags))
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

  ListBuilder<GenreDto>? _genres;
  ListBuilder<GenreDto> get genres =>
      _$this._genres ??= new ListBuilder<GenreDto>();
  set genres(ListBuilder<GenreDto>? genres) => _$this._genres = genres;

  ListBuilder<GenreDto>? _tags;
  ListBuilder<GenreDto> get tags =>
      _$this._tags ??= new ListBuilder<GenreDto>();
  set tags(ListBuilder<GenreDto>? tags) => _$this._tags = tags;

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
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'tags';
        _tags?.build();
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

class _$GenreDto extends GenreDto {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? language;
  @override
  final int? gamesCount;
  @override
  final String? imageBackground;

  factory _$GenreDto([void Function(GenreDtoBuilder)? updates]) =>
      (new GenreDtoBuilder()..update(updates))._build();

  _$GenreDto._(
      {this.id,
      this.name,
      this.slug,
      this.language,
      this.gamesCount,
      this.imageBackground})
      : super._();

  @override
  GenreDto rebuild(void Function(GenreDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreDtoBuilder toBuilder() => new GenreDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreDto &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        language == other.language &&
        gamesCount == other.gamesCount &&
        imageBackground == other.imageBackground;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), slug.hashCode),
                language.hashCode),
            gamesCount.hashCode),
        imageBackground.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreDto')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('language', language)
          ..add('gamesCount', gamesCount)
          ..add('imageBackground', imageBackground))
        .toString();
  }
}

class GenreDtoBuilder implements Builder<GenreDto, GenreDtoBuilder> {
  _$GenreDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  int? _gamesCount;
  int? get gamesCount => _$this._gamesCount;
  set gamesCount(int? gamesCount) => _$this._gamesCount = gamesCount;

  String? _imageBackground;
  String? get imageBackground => _$this._imageBackground;
  set imageBackground(String? imageBackground) =>
      _$this._imageBackground = imageBackground;

  GenreDtoBuilder();

  GenreDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _language = $v.language;
      _gamesCount = $v.gamesCount;
      _imageBackground = $v.imageBackground;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenreDto;
  }

  @override
  void update(void Function(GenreDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenreDto build() => _build();

  _$GenreDto _build() {
    final _$result = _$v ??
        new _$GenreDto._(
            id: id,
            name: name,
            slug: slug,
            language: language,
            gamesCount: gamesCount,
            imageBackground: imageBackground);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
