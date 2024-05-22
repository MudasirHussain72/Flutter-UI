// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailModelImpl _$$MovieDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailModelImpl(
      tvShow: TvShow.fromJson(json['tvShow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieDetailModelImplToJson(
        _$MovieDetailModelImpl instance) =>
    <String, dynamic>{
      'tvShow': instance.tvShow,
    };

_$TvShowImpl _$$TvShowImplFromJson(Map<String, dynamic> json) => _$TvShowImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      permalink: json['permalink'] as String,
      url: json['url'] as String,
      description: json['description'] as String,
      descriptionSource: json['description_source'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'],
      country: json['country'] as String,
      status: json['status'] as String,
      runtime: (json['runtime'] as num).toInt(),
      network: json['network'] as String,
      youtubeLink: json['youtube_link'],
      imagePath: json['image_path'] as String,
      imageThumbnailPath: json['image_thumbnail_path'] as String,
      rating: json['rating'] as String,
      ratingCount: json['rating_count'] as String,
      countdown: json['countdown'],
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvShowImplToJson(_$TvShowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'url': instance.url,
      'description': instance.description,
      'description_source': instance.descriptionSource,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate,
      'country': instance.country,
      'status': instance.status,
      'runtime': instance.runtime,
      'network': instance.network,
      'youtube_link': instance.youtubeLink,
      'image_path': instance.imagePath,
      'image_thumbnail_path': instance.imageThumbnailPath,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'countdown': instance.countdown,
      'genres': instance.genres,
      'pictures': instance.pictures,
      'episodes': instance.episodes,
    };

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      season: (json['season'] as num).toInt(),
      episode: (json['episode'] as num).toInt(),
      name: json['name'] as String,
      airDate: DateTime.parse(json['air_date'] as String),
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'season': instance.season,
      'episode': instance.episode,
      'name': instance.name,
      'air_date': instance.airDate.toIso8601String(),
    };
