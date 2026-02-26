// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_history_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalHistoryRespDto {

 List<WithdrawalRespDto> get items; int get totalCount; int get page; int get pageSize;
/// Create a copy of WithdrawalHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalHistoryRespDtoCopyWith<WithdrawalHistoryRespDto> get copyWith => _$WithdrawalHistoryRespDtoCopyWithImpl<WithdrawalHistoryRespDto>(this as WithdrawalHistoryRespDto, _$identity);

  /// Serializes this WithdrawalHistoryRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalHistoryRespDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount,page,pageSize);

@override
String toString() {
  return 'WithdrawalHistoryRespDto(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $WithdrawalHistoryRespDtoCopyWith<$Res>  {
  factory $WithdrawalHistoryRespDtoCopyWith(WithdrawalHistoryRespDto value, $Res Function(WithdrawalHistoryRespDto) _then) = _$WithdrawalHistoryRespDtoCopyWithImpl;
@useResult
$Res call({
 List<WithdrawalRespDto> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class _$WithdrawalHistoryRespDtoCopyWithImpl<$Res>
    implements $WithdrawalHistoryRespDtoCopyWith<$Res> {
  _$WithdrawalHistoryRespDtoCopyWithImpl(this._self, this._then);

  final WithdrawalHistoryRespDto _self;
  final $Res Function(WithdrawalHistoryRespDto) _then;

/// Create a copy of WithdrawalHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WithdrawalRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalHistoryRespDto].
extension WithdrawalHistoryRespDtoPatterns on WithdrawalHistoryRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalHistoryRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalHistoryRespDto value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalHistoryRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WithdrawalRespDto> items,  int totalCount,  int page,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WithdrawalRespDto> items,  int totalCount,  int page,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto():
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WithdrawalRespDto> items,  int totalCount,  int page,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalHistoryRespDto() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WithdrawalHistoryRespDto implements WithdrawalHistoryRespDto {
  const _WithdrawalHistoryRespDto({final  List<WithdrawalRespDto> items = const [], required this.totalCount, required this.page, required this.pageSize}): _items = items;
  factory _WithdrawalHistoryRespDto.fromJson(Map<String, dynamic> json) => _$WithdrawalHistoryRespDtoFromJson(json);

 final  List<WithdrawalRespDto> _items;
@override@JsonKey() List<WithdrawalRespDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalCount;
@override final  int page;
@override final  int pageSize;

/// Create a copy of WithdrawalHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalHistoryRespDtoCopyWith<_WithdrawalHistoryRespDto> get copyWith => __$WithdrawalHistoryRespDtoCopyWithImpl<_WithdrawalHistoryRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WithdrawalHistoryRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalHistoryRespDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount,page,pageSize);

@override
String toString() {
  return 'WithdrawalHistoryRespDto(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalHistoryRespDtoCopyWith<$Res> implements $WithdrawalHistoryRespDtoCopyWith<$Res> {
  factory _$WithdrawalHistoryRespDtoCopyWith(_WithdrawalHistoryRespDto value, $Res Function(_WithdrawalHistoryRespDto) _then) = __$WithdrawalHistoryRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<WithdrawalRespDto> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class __$WithdrawalHistoryRespDtoCopyWithImpl<$Res>
    implements _$WithdrawalHistoryRespDtoCopyWith<$Res> {
  __$WithdrawalHistoryRespDtoCopyWithImpl(this._self, this._then);

  final _WithdrawalHistoryRespDto _self;
  final $Res Function(_WithdrawalHistoryRespDto) _then;

/// Create a copy of WithdrawalHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_WithdrawalHistoryRespDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WithdrawalRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
