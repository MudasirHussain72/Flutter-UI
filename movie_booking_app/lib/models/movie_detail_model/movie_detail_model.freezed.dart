// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  @JsonKey(name: "tvShow")
  TvShow get tvShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res, MovieDetailModel>;
  @useResult
  $Res call({@JsonKey(name: "tvShow") TvShow tvShow});

  $TvShowCopyWith<$Res> get tvShow;
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res, $Val extends MovieDetailModel>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShow = null,
  }) {
    return _then(_value.copyWith(
      tvShow: null == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as TvShow,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TvShowCopyWith<$Res> get tvShow {
    return $TvShowCopyWith<$Res>(_value.tvShow, (value) {
      return _then(_value.copyWith(tvShow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailModelImplCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$MovieDetailModelImplCopyWith(_$MovieDetailModelImpl value,
          $Res Function(_$MovieDetailModelImpl) then) =
      __$$MovieDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "tvShow") TvShow tvShow});

  @override
  $TvShowCopyWith<$Res> get tvShow;
}

/// @nodoc
class __$$MovieDetailModelImplCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res, _$MovieDetailModelImpl>
    implements _$$MovieDetailModelImplCopyWith<$Res> {
  __$$MovieDetailModelImplCopyWithImpl(_$MovieDetailModelImpl _value,
      $Res Function(_$MovieDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShow = null,
  }) {
    return _then(_$MovieDetailModelImpl(
      tvShow: null == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as TvShow,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailModelImpl implements _MovieDetailModel {
  const _$MovieDetailModelImpl({@JsonKey(name: "tvShow") required this.tvShow});

  factory _$MovieDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "tvShow")
  final TvShow tvShow;

  @override
  String toString() {
    return 'MovieDetailModel(tvShow: $tvShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailModelImpl &&
            (identical(other.tvShow, tvShow) || other.tvShow == tvShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tvShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      __$$MovieDetailModelImplCopyWithImpl<_$MovieDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailModel implements MovieDetailModel {
  const factory _MovieDetailModel(
          {@JsonKey(name: "tvShow") required final TvShow tvShow}) =
      _$MovieDetailModelImpl;

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "tvShow")
  TvShow get tvShow;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShow _$TvShowFromJson(Map<String, dynamic> json) {
  return _TvShow.fromJson(json);
}

/// @nodoc
mixin _$TvShow {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "permalink")
  String get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "description_source")
  String get descriptionSource => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  dynamic get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "runtime")
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: "youtube_link")
  dynamic get youtubeLink => throw _privateConstructorUsedError;
  @JsonKey(name: "image_path")
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating_count")
  String get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: "countdown")
  dynamic get countdown => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<String> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "pictures")
  List<String> get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "episodes")
  List<Episode> get episodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowCopyWith<TvShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowCopyWith<$Res> {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) then) =
      _$TvShowCopyWithImpl<$Res, TvShow>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "permalink") String permalink,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "description_source") String descriptionSource,
      @JsonKey(name: "start_date") DateTime startDate,
      @JsonKey(name: "end_date") dynamic endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "runtime") int runtime,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "youtube_link") dynamic youtubeLink,
      @JsonKey(name: "image_path") String imagePath,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "rating_count") String ratingCount,
      @JsonKey(name: "countdown") dynamic countdown,
      @JsonKey(name: "genres") List<String> genres,
      @JsonKey(name: "pictures") List<String> pictures,
      @JsonKey(name: "episodes") List<Episode> episodes});
}

/// @nodoc
class _$TvShowCopyWithImpl<$Res, $Val extends TvShow>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? url = null,
    Object? description = null,
    Object? descriptionSource = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? status = null,
    Object? runtime = null,
    Object? network = null,
    Object? youtubeLink = freezed,
    Object? imagePath = null,
    Object? imageThumbnailPath = null,
    Object? rating = null,
    Object? ratingCount = null,
    Object? countdown = freezed,
    Object? genres = null,
    Object? pictures = null,
    Object? episodes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionSource: null == descriptionSource
          ? _value.descriptionSource
          : descriptionSource // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeLink: freezed == youtubeLink
          ? _value.youtubeLink
          : youtubeLink // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as String,
      countdown: freezed == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as dynamic,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowImplCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$$TvShowImplCopyWith(
          _$TvShowImpl value, $Res Function(_$TvShowImpl) then) =
      __$$TvShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "permalink") String permalink,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "description_source") String descriptionSource,
      @JsonKey(name: "start_date") DateTime startDate,
      @JsonKey(name: "end_date") dynamic endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "runtime") int runtime,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "youtube_link") dynamic youtubeLink,
      @JsonKey(name: "image_path") String imagePath,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath,
      @JsonKey(name: "rating") String rating,
      @JsonKey(name: "rating_count") String ratingCount,
      @JsonKey(name: "countdown") dynamic countdown,
      @JsonKey(name: "genres") List<String> genres,
      @JsonKey(name: "pictures") List<String> pictures,
      @JsonKey(name: "episodes") List<Episode> episodes});
}

/// @nodoc
class __$$TvShowImplCopyWithImpl<$Res>
    extends _$TvShowCopyWithImpl<$Res, _$TvShowImpl>
    implements _$$TvShowImplCopyWith<$Res> {
  __$$TvShowImplCopyWithImpl(
      _$TvShowImpl _value, $Res Function(_$TvShowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? url = null,
    Object? description = null,
    Object? descriptionSource = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? status = null,
    Object? runtime = null,
    Object? network = null,
    Object? youtubeLink = freezed,
    Object? imagePath = null,
    Object? imageThumbnailPath = null,
    Object? rating = null,
    Object? ratingCount = null,
    Object? countdown = freezed,
    Object? genres = null,
    Object? pictures = null,
    Object? episodes = null,
  }) {
    return _then(_$TvShowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionSource: null == descriptionSource
          ? _value.descriptionSource
          : descriptionSource // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeLink: freezed == youtubeLink
          ? _value.youtubeLink
          : youtubeLink // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as String,
      countdown: freezed == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as dynamic,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowImpl implements _TvShow {
  const _$TvShowImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "permalink") required this.permalink,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "description_source") required this.descriptionSource,
      @JsonKey(name: "start_date") required this.startDate,
      @JsonKey(name: "end_date") required this.endDate,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "runtime") required this.runtime,
      @JsonKey(name: "network") required this.network,
      @JsonKey(name: "youtube_link") required this.youtubeLink,
      @JsonKey(name: "image_path") required this.imagePath,
      @JsonKey(name: "image_thumbnail_path") required this.imageThumbnailPath,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "rating_count") required this.ratingCount,
      @JsonKey(name: "countdown") required this.countdown,
      @JsonKey(name: "genres") required final List<String> genres,
      @JsonKey(name: "pictures") required final List<String> pictures,
      @JsonKey(name: "episodes") required final List<Episode> episodes})
      : _genres = genres,
        _pictures = pictures,
        _episodes = episodes;

  factory _$TvShowImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "permalink")
  final String permalink;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "description_source")
  final String descriptionSource;
  @override
  @JsonKey(name: "start_date")
  final DateTime startDate;
  @override
  @JsonKey(name: "end_date")
  final dynamic endDate;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "runtime")
  final int runtime;
  @override
  @JsonKey(name: "network")
  final String network;
  @override
  @JsonKey(name: "youtube_link")
  final dynamic youtubeLink;
  @override
  @JsonKey(name: "image_path")
  final String imagePath;
  @override
  @JsonKey(name: "image_thumbnail_path")
  final String imageThumbnailPath;
  @override
  @JsonKey(name: "rating")
  final String rating;
  @override
  @JsonKey(name: "rating_count")
  final String ratingCount;
  @override
  @JsonKey(name: "countdown")
  final dynamic countdown;
  final List<String> _genres;
  @override
  @JsonKey(name: "genres")
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<String> _pictures;
  @override
  @JsonKey(name: "pictures")
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  final List<Episode> _episodes;
  @override
  @JsonKey(name: "episodes")
  List<Episode> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'TvShow(id: $id, name: $name, permalink: $permalink, url: $url, description: $description, descriptionSource: $descriptionSource, startDate: $startDate, endDate: $endDate, country: $country, status: $status, runtime: $runtime, network: $network, youtubeLink: $youtubeLink, imagePath: $imagePath, imageThumbnailPath: $imageThumbnailPath, rating: $rating, ratingCount: $ratingCount, countdown: $countdown, genres: $genres, pictures: $pictures, episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionSource, descriptionSource) ||
                other.descriptionSource == descriptionSource) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.network, network) || other.network == network) &&
            const DeepCollectionEquality()
                .equals(other.youtubeLink, youtubeLink) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            const DeepCollectionEquality().equals(other.countdown, countdown) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        permalink,
        url,
        description,
        descriptionSource,
        startDate,
        const DeepCollectionEquality().hash(endDate),
        country,
        status,
        runtime,
        network,
        const DeepCollectionEquality().hash(youtubeLink),
        imagePath,
        imageThumbnailPath,
        rating,
        ratingCount,
        const DeepCollectionEquality().hash(countdown),
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_pictures),
        const DeepCollectionEquality().hash(_episodes)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      __$$TvShowImplCopyWithImpl<_$TvShowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowImplToJson(
      this,
    );
  }
}

abstract class _TvShow implements TvShow {
  const factory _TvShow(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "permalink") required final String permalink,
          @JsonKey(name: "url") required final String url,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "description_source")
          required final String descriptionSource,
          @JsonKey(name: "start_date") required final DateTime startDate,
          @JsonKey(name: "end_date") required final dynamic endDate,
          @JsonKey(name: "country") required final String country,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "runtime") required final int runtime,
          @JsonKey(name: "network") required final String network,
          @JsonKey(name: "youtube_link") required final dynamic youtubeLink,
          @JsonKey(name: "image_path") required final String imagePath,
          @JsonKey(name: "image_thumbnail_path")
          required final String imageThumbnailPath,
          @JsonKey(name: "rating") required final String rating,
          @JsonKey(name: "rating_count") required final String ratingCount,
          @JsonKey(name: "countdown") required final dynamic countdown,
          @JsonKey(name: "genres") required final List<String> genres,
          @JsonKey(name: "pictures") required final List<String> pictures,
          @JsonKey(name: "episodes") required final List<Episode> episodes}) =
      _$TvShowImpl;

  factory _TvShow.fromJson(Map<String, dynamic> json) = _$TvShowImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "permalink")
  String get permalink;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "description_source")
  String get descriptionSource;
  @override
  @JsonKey(name: "start_date")
  DateTime get startDate;
  @override
  @JsonKey(name: "end_date")
  dynamic get endDate;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "runtime")
  int get runtime;
  @override
  @JsonKey(name: "network")
  String get network;
  @override
  @JsonKey(name: "youtube_link")
  dynamic get youtubeLink;
  @override
  @JsonKey(name: "image_path")
  String get imagePath;
  @override
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath;
  @override
  @JsonKey(name: "rating")
  String get rating;
  @override
  @JsonKey(name: "rating_count")
  String get ratingCount;
  @override
  @JsonKey(name: "countdown")
  dynamic get countdown;
  @override
  @JsonKey(name: "genres")
  List<String> get genres;
  @override
  @JsonKey(name: "pictures")
  List<String> get pictures;
  @override
  @JsonKey(name: "episodes")
  List<Episode> get episodes;
  @override
  @JsonKey(ignore: true)
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  @JsonKey(name: "season")
  int get season => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  int get episode => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  DateTime get airDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {@JsonKey(name: "season") int season,
      @JsonKey(name: "episode") int episode,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "air_date") DateTime airDate});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? episode = null,
    Object? name = null,
    Object? airDate = null,
  }) {
    return _then(_value.copyWith(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "season") int season,
      @JsonKey(name: "episode") int episode,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "air_date") DateTime airDate});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? episode = null,
    Object? name = null,
    Object? airDate = null,
  }) {
    return _then(_$EpisodeImpl(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  const _$EpisodeImpl(
      {@JsonKey(name: "season") required this.season,
      @JsonKey(name: "episode") required this.episode,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "air_date") required this.airDate});

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  @JsonKey(name: "season")
  final int season;
  @override
  @JsonKey(name: "episode")
  final int episode;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "air_date")
  final DateTime airDate;

  @override
  String toString() {
    return 'Episode(season: $season, episode: $episode, name: $name, airDate: $airDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, season, episode, name, airDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
          {@JsonKey(name: "season") required final int season,
          @JsonKey(name: "episode") required final int episode,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "air_date") required final DateTime airDate}) =
      _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  @JsonKey(name: "season")
  int get season;
  @override
  @JsonKey(name: "episode")
  int get episode;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "air_date")
  DateTime get airDate;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
