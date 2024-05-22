// To parse this JSON data, do
//
//     final searchMovieModel = searchMovieModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'search_movie_model.freezed.dart';
part 'search_movie_model.g.dart';

SearchMovieModel searchMovieModelFromJson(String str) => SearchMovieModel.fromJson(json.decode(str));

String searchMovieModelToJson(SearchMovieModel data) => json.encode(data.toJson());

@freezed
class SearchMovieModel with _$SearchMovieModel {
    const factory SearchMovieModel({
        @JsonKey(name: "total")
        required String total,
        @JsonKey(name: "page")
        required int page,
        @JsonKey(name: "pages")
        required int pages,
        @JsonKey(name: "tv_shows")
        required List<TvShow> tvShows,
    }) = _SearchMovieModel;

    factory SearchMovieModel.fromJson(Map<String, dynamic> json) => _$SearchMovieModelFromJson(json);
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
        @JsonKey(name: "start_date")
        required String? startDate,
        @JsonKey(name: "end_date")
        required String? endDate,
        @JsonKey(name: "country")
        required String country,
        @JsonKey(name: "network")
        required String network,
        @JsonKey(name: "status")
        required String status,
        @JsonKey(name: "image_thumbnail_path")
        required String imageThumbnailPath,
    }) = _TvShow;

    factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}
