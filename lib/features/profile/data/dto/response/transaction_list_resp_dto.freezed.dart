// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionListRespDto {

 List<TransactionItemRespDto> get items; String? get nextCursor; bool get hasMore; int get totalCount;
/// Create a copy of TransactionListRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionListRespDtoCopyWith<TransactionListRespDto> get copyWith => _$TransactionListRespDtoCopyWithImpl<TransactionListRespDto>(this as TransactionListRespDto, _$identity);

  /// Serializes this TransactionListRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListRespDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore,totalCount);

@override
String toString() {
  return 'TransactionListRespDto(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $TransactionListRespDtoCopyWith<$Res>  {
  factory $TransactionListRespDtoCopyWith(TransactionListRespDto value, $Res Function(TransactionListRespDto) _then) = _$TransactionListRespDtoCopyWithImpl;
@useResult
$Res call({
 List<TransactionItemRespDto> items, String? nextCursor, bool hasMore, int totalCount
});




}
/// @nodoc
class _$TransactionListRespDtoCopyWithImpl<$Res>
    implements $TransactionListRespDtoCopyWith<$Res> {
  _$TransactionListRespDtoCopyWithImpl(this._self, this._then);

  final TransactionListRespDto _self;
  final $Res Function(TransactionListRespDto) _then;

/// Create a copy of TransactionListRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionListRespDto].
extension TransactionListRespDtoPatterns on TransactionListRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionListRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionListRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionListRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TransactionListRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionListRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionListRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TransactionItemRespDto> items,  String? nextCursor,  bool hasMore,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TransactionItemRespDto> items,  String? nextCursor,  bool hasMore,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _TransactionListRespDto():
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TransactionItemRespDto> items,  String? nextCursor,  bool hasMore,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _TransactionListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionListRespDto implements TransactionListRespDto {
  const _TransactionListRespDto({final  List<TransactionItemRespDto> items = const [], this.nextCursor, this.hasMore = false, this.totalCount = 0}): _items = items;
  factory _TransactionListRespDto.fromJson(Map<String, dynamic> json) => _$TransactionListRespDtoFromJson(json);

 final  List<TransactionItemRespDto> _items;
@override@JsonKey() List<TransactionItemRespDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int totalCount;

/// Create a copy of TransactionListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListRespDtoCopyWith<_TransactionListRespDto> get copyWith => __$TransactionListRespDtoCopyWithImpl<_TransactionListRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionListRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListRespDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore,totalCount);

@override
String toString() {
  return 'TransactionListRespDto(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$TransactionListRespDtoCopyWith<$Res> implements $TransactionListRespDtoCopyWith<$Res> {
  factory _$TransactionListRespDtoCopyWith(_TransactionListRespDto value, $Res Function(_TransactionListRespDto) _then) = __$TransactionListRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionItemRespDto> items, String? nextCursor, bool hasMore, int totalCount
});




}
/// @nodoc
class __$TransactionListRespDtoCopyWithImpl<$Res>
    implements _$TransactionListRespDtoCopyWith<$Res> {
  __$TransactionListRespDtoCopyWithImpl(this._self, this._then);

  final _TransactionListRespDto _self;
  final $Res Function(_TransactionListRespDto) _then;

/// Create a copy of TransactionListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? totalCount = null,}) {
  return _then(_TransactionListRespDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
