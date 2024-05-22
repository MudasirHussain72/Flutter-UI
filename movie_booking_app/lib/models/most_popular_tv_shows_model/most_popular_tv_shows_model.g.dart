// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_popular_tv_shows_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MostPopularTvShowsModelImpl _$$MostPopularTvShowsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MostPopularTvShowsModelImpl(
      total: json['total'] as String,
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      tvShows: (json['tv_shows'] as List<dynamic>)
          .map((e) => TvShow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MostPopularTvShowsModelImplToJson(
        _$MostPopularTvShowsModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tvShows,
    };

_$TvShowImpl _$$TvShowImplFromJson(Map<String, dynamic> json) => _$TvShowImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      permalink: json['permalink'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'],
      country: json['country'] as String,
      network: json['network'] as String,
      status: json['status'] as String,
      imageThumbnailPath: json['image_thumbnail_path'] as String,
    );

Map<String, dynamic> _$$TvShowImplToJson(_$TvShowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate,
      'country': instance.country,
      'network': instance.network,
      'status': instance.status,
      'image_thumbnail_path': instance.imageThumbnailPath,
    };
