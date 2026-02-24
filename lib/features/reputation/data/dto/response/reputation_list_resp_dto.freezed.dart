// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_list_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReputationListRespDto {

 List<ReputationRespDto> get items; String? get nextCursor; bool get hasNext;
/// Create a copy of ReputationListRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationListRespDtoCopyWith<ReputationListRespDto> get copyWith => _$ReputationListRespDtoCopyWithImpl<ReputationListRespDto>(this as ReputationListRespDto, _$identity);

  /// Serializes this ReputationListRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationListRespDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasNext);

@override
String toString() {
  return 'ReputationListRespDto(items: $items, nextCursor: $nextCursor, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $ReputationListRespDtoCopyWith<$Res>  {
  factory $ReputationListRespDtoCopyWith(ReputationListRespDto value, $Res Function(ReputationListRespDto) _then) = _$ReputationListRespDtoCopyWithImpl;
@useResult
$Res call({
 List<ReputationRespDto> items, String? nextCursor, bool hasNext
});




}
/// @nodoc
class _$ReputationListRespDtoCopyWithImpl<$Res>
    implements $ReputationListRespDtoCopyWith<$Res> {
  _$ReputationListRespDtoCopyWithImpl(this._self, this._then);

  final ReputationListRespDto _self;
  final $Res Function(ReputationListRespDto) _then;

/// Create a copy of ReputationListRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasNext = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReputationRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReputationListRespDto].
extension ReputationListRespDtoPatterns on ReputationListRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationListRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationListRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationListRespDto value)  $default,){
final _that = this;
switch (_that) {
case _ReputationListRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationListRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationListRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReputationRespDto> items,  String? nextCursor,  bool hasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReputationListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasNext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReputationRespDto> items,  String? nextCursor,  bool hasNext)  $default,) {final _that = this;
switch (_that) {
case _ReputationListRespDto():
return $default(_that.items,_that.nextCursor,_that.hasNext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReputationRespDto> items,  String? nextCursor,  bool hasNext)?  $default,) {final _that = this;
switch (_that) {
case _ReputationListRespDto() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasNext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReputationListRespDto implements ReputationListRespDto {
  const _ReputationListRespDto({final  List<ReputationRespDto> items = const <ReputationRespDto>[], this.nextCursor, this.hasNext = false}): _items = items;
  factory _ReputationListRespDto.fromJson(Map<String, dynamic> json) => _$ReputationListRespDtoFromJson(json);

 final  List<ReputationRespDto> _items;
@override@JsonKey() List<ReputationRespDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasNext;

/// Create a copy of ReputationListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationListRespDtoCopyWith<_ReputationListRespDto> get copyWith => __$ReputationListRespDtoCopyWithImpl<_ReputationListRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReputationListRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationListRespDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasNext);

@override
String toString() {
  return 'ReputationListRespDto(items: $items, nextCursor: $nextCursor, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$ReputationListRespDtoCopyWith<$Res> implements $ReputationListRespDtoCopyWith<$Res> {
  factory _$ReputationListRespDtoCopyWith(_ReputationListRespDto value, $Res Function(_ReputationListRespDto) _then) = __$ReputationListRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ReputationRespDto> items, String? nextCursor, bool hasNext
});




}
/// @nodoc
class __$ReputationListRespDtoCopyWithImpl<$Res>
    implements _$ReputationListRespDtoCopyWith<$Res> {
  __$ReputationListRespDtoCopyWithImpl(this._self, this._then);

  final _ReputationListRespDto _self;
  final $Res Function(_ReputationListRespDto) _then;

/// Create a copy of ReputationListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasNext = null,}) {
  return _then(_ReputationListRespDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReputationRespDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
