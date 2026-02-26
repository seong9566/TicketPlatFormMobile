// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_history_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceHistoryRespDto {

 List<BalanceTransactionRespDto> get items; int get totalCount; int get page; int get pageSize;
/// Create a copy of BalanceHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceHistoryRespDtoCopyWith<BalanceHistoryRespDto> get copyWith => _$BalanceHistoryRespDtoCopyWithImpl<BalanceHistoryRespDto>(this as BalanceHistoryRespDto, _$identity);

  /// Serializes this BalanceHistoryRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceHistoryRespDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount,page,pageSize);

@override
String toString() {
  return 'BalanceHistoryRespDto(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class $BalanceHistoryRespDtoCopyWith<$Res>  {
  factory $BalanceHistoryRespDtoCopyWith(BalanceHistoryRespDto value, $Res Function(BalanceHistoryRespDto) _then) = _$BalanceHistoryRespDtoCopyWithImpl;
@useResult
$Res call({
 List<BalanceTransactionRespDto> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class _$BalanceHistoryRespDtoCopyWithImpl<$Res>
    implements $BalanceHistoryRespDtoCopyWith<$Res> {
  _$BalanceHistoryRespDtoCopyWithImpl(this._self, this._then);

  final BalanceHistoryRespDto _self;
  final $Res Function(BalanceHistoryRespDto) _then;

/// Create a copy of BalanceHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BalanceTransactionRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BalanceHistoryRespDto].
extension BalanceHistoryRespDtoPatterns on BalanceHistoryRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceHistoryRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceHistoryRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceHistoryRespDto value)  $default,){
final _that = this;
switch (_that) {
case _BalanceHistoryRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceHistoryRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceHistoryRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BalanceTransactionRespDto> items,  int totalCount,  int page,  int pageSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceHistoryRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BalanceTransactionRespDto> items,  int totalCount,  int page,  int pageSize)  $default,) {final _that = this;
switch (_that) {
case _BalanceHistoryRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BalanceTransactionRespDto> items,  int totalCount,  int page,  int pageSize)?  $default,) {final _that = this;
switch (_that) {
case _BalanceHistoryRespDto() when $default != null:
return $default(_that.items,_that.totalCount,_that.page,_that.pageSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceHistoryRespDto implements BalanceHistoryRespDto {
  const _BalanceHistoryRespDto({final  List<BalanceTransactionRespDto> items = const [], required this.totalCount, required this.page, required this.pageSize}): _items = items;
  factory _BalanceHistoryRespDto.fromJson(Map<String, dynamic> json) => _$BalanceHistoryRespDtoFromJson(json);

 final  List<BalanceTransactionRespDto> _items;
@override@JsonKey() List<BalanceTransactionRespDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalCount;
@override final  int page;
@override final  int pageSize;

/// Create a copy of BalanceHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceHistoryRespDtoCopyWith<_BalanceHistoryRespDto> get copyWith => __$BalanceHistoryRespDtoCopyWithImpl<_BalanceHistoryRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceHistoryRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceHistoryRespDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount,page,pageSize);

@override
String toString() {
  return 'BalanceHistoryRespDto(items: $items, totalCount: $totalCount, page: $page, pageSize: $pageSize)';
}


}

/// @nodoc
abstract mixin class _$BalanceHistoryRespDtoCopyWith<$Res> implements $BalanceHistoryRespDtoCopyWith<$Res> {
  factory _$BalanceHistoryRespDtoCopyWith(_BalanceHistoryRespDto value, $Res Function(_BalanceHistoryRespDto) _then) = __$BalanceHistoryRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<BalanceTransactionRespDto> items, int totalCount, int page, int pageSize
});




}
/// @nodoc
class __$BalanceHistoryRespDtoCopyWithImpl<$Res>
    implements _$BalanceHistoryRespDtoCopyWith<$Res> {
  __$BalanceHistoryRespDtoCopyWithImpl(this._self, this._then);

  final _BalanceHistoryRespDto _self;
  final $Res Function(_BalanceHistoryRespDto) _then;

/// Create a copy of BalanceHistoryRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,Object? page = null,Object? pageSize = null,}) {
  return _then(_BalanceHistoryRespDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<BalanceTransactionRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
