import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  GamesDto,
  GenresDto,
  GameDto,
  GenreDto,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
