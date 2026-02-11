// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationListEntity {

 List<NotificationEntity> get items; String? get nextCursor; bool get hasMore;
/// Create a copy of NotificationListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationListEntityCopyWith<NotificationListEntity> get copyWith => _$NotificationListEntityCopyWithImpl<NotificationListEntity>(this as NotificationListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationListEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore);

@override
String toString() {
  return 'NotificationListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $NotificationListEntityCopyWith<$Res>  {
  factory $NotificationListEntityCopyWith(NotificationListEntity value, $Res Function(NotificationListEntity) _then) = _$NotificationListEntityCopyWithImpl;
@useResult
$Res call({
 List<NotificationEntity> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class _$NotificationListEntityCopyWithImpl<$Res>
    implements $NotificationListEntityCopyWith<$Res> {
  _$NotificationListEntityCopyWithImpl(this._self, this._then);

  final NotificationListEntity _self;
  final $Res Function(NotificationListEntity) _then;

/// Create a copy of NotificationListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationListEntity].
extension NotificationListEntityPatterns on NotificationListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationListEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationEntity> items,  String? nextCursor,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationListEntity() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationEntity> items,  String? nextCursor,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _NotificationListEntity():
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationEntity> items,  String? nextCursor,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _NotificationListEntity() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationListEntity implements NotificationListEntity {
  const _NotificationListEntity({final  List<NotificationEntity> items = const [], this.nextCursor, this.hasMore = false}): _items = items;
  

 final  List<NotificationEntity> _items;
@override@JsonKey() List<NotificationEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;

/// Create a copy of NotificationListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationListEntityCopyWith<_NotificationListEntity> get copyWith => __$NotificationListEntityCopyWithImpl<_NotificationListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationListEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore);

@override
String toString() {
  return 'NotificationListEntity(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$NotificationListEntityCopyWith<$Res> implements $NotificationListEntityCopyWith<$Res> {
  factory _$NotificationListEntityCopyWith(_NotificationListEntity value, $Res Function(_NotificationListEntity) _then) = __$NotificationListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationEntity> items, String? nextCursor, bool hasMore
});




}
/// @nodoc
class __$NotificationListEntityCopyWithImpl<$Res>
    implements _$NotificationListEntityCopyWith<$Res> {
  __$NotificationListEntityCopyWithImpl(this._self, this._then);

  final _NotificationListEntity _self;
  final $Res Function(_NotificationListEntity) _then;

/// Create a copy of NotificationListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_NotificationListEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
