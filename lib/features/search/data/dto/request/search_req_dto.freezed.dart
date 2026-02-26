// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_req_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchReqDto {

 String get keyword; int get page; int get pageSize;
/// Create a copy of SearchReqDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchReqDtoCopyWith<SearchReqDto> get copyWith => _$SearchReqDtoCopyWithImpl<SearchReqDto>(this as SearchReqDto, _$identity);

  /// Serializes this SearchReqDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchReqDto&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyword,page,pageSize);

@override
String toString() {
  return 'SearchReqDto(keyword: $keyword, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $SearchReqDtoCopyWith<$Res>  {
  factory $SearchReqDtoCopyWith(SearchReqDto value, $Res Function(SearchReqDto) _then) = _$SearchReqDtoCopyWithImpl;
@useResult
$Res call({
 String keyword, int page, int pageSize
});




}
/// @nodoc
class _$SearchReqDtoCopyWithImpl<$Res>
    implements $SearchReqDtoCopyWith<$Res> {
  _$SearchReqDtoCopyWithImpl(this._self, this._then);

  final SearchReqDto _self;
  final $Res Function(SearchReqDto) _then;

/// Create a copy of SearchReqDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyword = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchReqDto].
extension SearchReqDtoPatterns on SearchReqDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchReqDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchReqDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchReqDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchReqDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchReqDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchReqDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String keyword,  int page,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchReqDto() when $default != null:
return $default(_that.keyword,_that.page,_that.pageSize);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String keyword,  int page,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _SearchReqDto():
return $default(_that.keyword,_that.page,_that.pageSize);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String keyword,  int page,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _SearchReqDto() when $default != null:
return $default(_that.keyword,_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchReqDto implements SearchReqDto {
  const _SearchReqDto({required this.keyword, this.page = 1, this.pageSize = 20});
  factory _SearchReqDto.fromJson(Map<String, dynamic> json) => _$SearchReqDtoFromJson(json);

@override final  String keyword;
@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;

/// Create a copy of SearchReqDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchReqDtoCopyWith<_SearchReqDto> get copyWith => __$SearchReqDtoCopyWithImpl<_SearchReqDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchReqDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchReqDto&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyword,page,pageSize);

@override
String toString() {
  return 'SearchReqDto(keyword: $keyword, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$SearchReqDtoCopyWith<$Res> implements $SearchReqDtoCopyWith<$Res> {
  factory _$SearchReqDtoCopyWith(_SearchReqDto value, $Res Function(_SearchReqDto) _then) = __$SearchReqDtoCopyWithImpl;
@override @useResult
$Res call({
 String keyword, int page, int pageSize
});




}
/// @nodoc
class __$SearchReqDtoCopyWithImpl<$Res>
    implements _$SearchReqDtoCopyWith<$Res> {
  __$SearchReqDtoCopyWithImpl(this._self, this._then);

  final _SearchReqDto _self;
  final $Res Function(_SearchReqDto) _then;

/// Create a copy of SearchReqDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyword = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_SearchReqDto(
keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
