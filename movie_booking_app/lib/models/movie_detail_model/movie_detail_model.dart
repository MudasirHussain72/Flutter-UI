// To parse this JSON data, do
//
//     final movieDetailModel = movieDetailModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

MovieDetailModel movieDetailModelFromJson(String str) => MovieDetailModel.fromJson(json.decode(str));

String movieDetailModelToJson(MovieDetailModel data) => json.encode(data.toJson());

@freezed
class MovieDetailModel with _$MovieDetailModel {
    const factory MovieDetailModel({
        @JsonKey(name: "tvShow")
        required TvShow tvShow,
    }) = _MovieDetailModel;

    factory MovieDetailModel.fromJson(Map<String, dynamic> json) => _$MovieDetailModelFromJson(json);
}

@freezed
class TvShow with _$TvShow {
    const factory TvShow({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "permalink")
        required String permalink,
        @JsonKey(name: "url")
        required String url,
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "description_source")
        required String descriptionSource,
        @JsonKey(name: "start_date")
        required DateTime startDate,
        @JsonKey(name: "end_date")
        required dynamic endDate,
        @JsonKey(name: "country")
        required String country,
        @JsonKey(name: "status")
        required String status,
        @JsonKey(name: "runtime")
        required int runtime,
        @JsonKey(name: "network")
        required String network,
        @JsonKey(name: "youtube_link")
        required dynamic youtubeLink,
        @JsonKey(name: "image_path")
        required String imagePath,
        @JsonKey(name: "image_thumbnail_path")
        required String imageThumbnailPath,
        @JsonKey(name: "rating")
        required String rating,
        @JsonKey(name: "rating_count")
        required String ratingCount,
        @JsonKey(name: "countdown")
        required dynamic countdown,
        @JsonKey(name: "genres")
        required List<String> genres,
        @JsonKey(name: "pictures")
        required List<String> pictures,
        @JsonKey(name: "episodes")
        required List<Episode> episodes,
    }) = _TvShow;

    factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}

@freezed
class Episode with _$Episode {
    const factory Episode({
        @JsonKey(name: "season")
        required int season,
        @JsonKey(name: "episode")
        required int episode,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "air_date")
        required DateTime airDate,
    }) = _Episode;

    factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}
