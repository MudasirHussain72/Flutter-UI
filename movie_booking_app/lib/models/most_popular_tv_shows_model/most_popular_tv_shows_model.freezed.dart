// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'most_popular_tv_shows_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MostPopularTvShowsModel _$MostPopularTvShowsModelFromJson(
    Map<String, dynamic> json) {
  return _MostPopularTvShowsModel.fromJson(json);
}

/// @nodoc
mixin _$MostPopularTvShowsModel {
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "pages")
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "tv_shows")
  List<TvShow> get tvShows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostPopularTvShowsModelCopyWith<MostPopularTvShowsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostPopularTvShowsModelCopyWith<$Res> {
  factory $MostPopularTvShowsModelCopyWith(MostPopularTvShowsModel value,
          $Res Function(MostPopularTvShowsModel) then) =
      _$MostPopularTvShowsModelCopyWithImpl<$Res, MostPopularTvShowsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") String total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pages") int pages,
      @JsonKey(name: "tv_shows") List<TvShow> tvShows});
}

/// @nodoc
class _$MostPopularTvShowsModelCopyWithImpl<$Res,
        $Val extends MostPopularTvShowsModel>
    implements $MostPopularTvShowsModelCopyWith<$Res> {
  _$MostPopularTvShowsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MostPopularTvShowsModelImplCopyWith<$Res>
    implements $MostPopularTvShowsModelCopyWith<$Res> {
  factory _$$MostPopularTvShowsModelImplCopyWith(
          _$MostPopularTvShowsModelImpl value,
          $Res Function(_$MostPopularTvShowsModelImpl) then) =
      __$$MostPopularTvShowsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") String total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "pages") int pages,
      @JsonKey(name: "tv_shows") List<TvShow> tvShows});
}

/// @nodoc
class __$$MostPopularTvShowsModelImplCopyWithImpl<$Res>
    extends _$MostPopularTvShowsModelCopyWithImpl<$Res,
        _$MostPopularTvShowsModelImpl>
    implements _$$MostPopularTvShowsModelImplCopyWith<$Res> {
  __$$MostPopularTvShowsModelImplCopyWithImpl(
      _$MostPopularTvShowsModelImpl _value,
      $Res Function(_$MostPopularTvShowsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_$MostPopularTvShowsModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _value._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MostPopularTvShowsModelImpl implements _MostPopularTvShowsModel {
  const _$MostPopularTvShowsModelImpl(
      {@JsonKey(name: "total") required this.total,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "pages") required this.pages,
      @JsonKey(name: "tv_shows") required final List<TvShow> tvShows})
      : _tvShows = tvShows;

  factory _$MostPopularTvShowsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MostPopularTvShowsModelImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "pages")
  final int pages;
  final List<TvShow> _tvShows;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShow> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  @override
  String toString() {
    return 'MostPopularTvShowsModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MostPopularTvShowsModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MostPopularTvShowsModelImplCopyWith<_$MostPopularTvShowsModelImpl>
      get copyWith => __$$MostPopularTvShowsModelImplCopyWithImpl<
          _$MostPopularTvShowsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MostPopularTvShowsModelImplToJson(
      this,
    );
  }
}

abstract class _MostPopularTvShowsModel implements MostPopularTvShowsModel {
  const factory _MostPopularTvShowsModel(
          {@JsonKey(name: "total") required final String total,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "pages") required final int pages,
          @JsonKey(name: "tv_shows") required final List<TvShow> tvShows}) =
      _$MostPopularTvShowsModelImpl;

  factory _MostPopularTvShowsModel.fromJson(Map<String, dynamic> json) =
      _$MostPopularTvShowsModelImpl.fromJson;

  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "pages")
  int get pages;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShow> get tvShows;
  @override
  @JsonKey(ignore: true)
  _$$MostPopularTvShowsModelImplCopyWith<_$MostPopularTvShowsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
  @JsonKey(name: "start_date")
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  dynamic get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath => throw _privateConstructorUsedError;

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
      @JsonKey(name: "start_date") DateTime startDate,
      @JsonKey(name: "end_date") dynamic endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath});
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
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
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
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "start_date") DateTime startDate,
      @JsonKey(name: "end_date") dynamic endDate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath});
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
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
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
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "start_date") required this.startDate,
      @JsonKey(name: "end_date") required this.endDate,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "network") required this.network,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "image_thumbnail_path") required this.imageThumbnailPath});

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
  @JsonKey(name: "start_date")
  final DateTime startDate;
  @override
  @JsonKey(name: "end_date")
  final dynamic endDate;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "network")
  final String network;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  final String imageThumbnailPath;

  @override
  String toString() {
    return 'TvShow(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
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
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      permalink,
      startDate,
      const DeepCollectionEquality().hash(endDate),
      country,
      network,
      status,
      imageThumbnailPath);

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
      @JsonKey(name: "start_date") required final DateTime startDate,
      @JsonKey(name: "end_date") required final dynamic endDate,
      @JsonKey(name: "country") required final String country,
      @JsonKey(name: "network") required final String network,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "image_thumbnail_path")
      required final String imageThumbnailPath}) = _$TvShowImpl;

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
  @JsonKey(name: "start_date")
  DateTime get startDate;
  @override
  @JsonKey(name: "end_date")
  dynamic get endDate;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "network")
  String get network;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath;
  @override
  @JsonKey(ignore: true)
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
