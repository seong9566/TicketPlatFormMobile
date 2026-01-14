// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellEventEntity {

 int get eventId; String get title; String? get posterImageUrl; String get venueName; DateTime get startAt; DateTime get endAt;
/// Create a copy of SellEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventEntityCopyWith<SellEventEntity> get copyWith => _$SellEventEntityCopyWithImpl<SellEventEntity>(this as SellEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,startAt,endAt);

@override
String toString() {
  return 'SellEventEntity(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class $SellEventEntityCopyWith<$Res>  {
  factory $SellEventEntityCopyWith(SellEventEntity value, $Res Function(SellEventEntity) _then) = _$SellEventEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, DateTime startAt, DateTime endAt
});




}
/// @nodoc
class _$SellEventEntityCopyWithImpl<$Res>
    implements $SellEventEntityCopyWith<$Res> {
  _$SellEventEntityCopyWithImpl(this._self, this._then);

  final SellEventEntity _self;
  final $Res Function(SellEventEntity) _then;

/// Create a copy of SellEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventEntity].
extension SellEventEntityPatterns on SellEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  DateTime startAt,  DateTime endAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventEntity() when $default != null:
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.startAt,_that.endAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  DateTime startAt,  DateTime endAt)  $default,) {final _that = this;
switch (_that) {
case _SellEventEntity():
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.startAt,_that.endAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  DateTime startAt,  DateTime endAt)?  $default,) {final _that = this;
switch (_that) {
case _SellEventEntity() when $default != null:
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.startAt,_that.endAt);case _:
  return null;

}
}

}

/// @nodoc


class _SellEventEntity implements SellEventEntity {
  const _SellEventEntity({required this.eventId, required this.title, this.posterImageUrl, required this.venueName, required this.startAt, required this.endAt});
  

@override final  int eventId;
@override final  String title;
@override final  String? posterImageUrl;
@override final  String venueName;
@override final  DateTime startAt;
@override final  DateTime endAt;

/// Create a copy of SellEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventEntityCopyWith<_SellEventEntity> get copyWith => __$SellEventEntityCopyWithImpl<_SellEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,startAt,endAt);

@override
String toString() {
  return 'SellEventEntity(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class _$SellEventEntityCopyWith<$Res> implements $SellEventEntityCopyWith<$Res> {
  factory _$SellEventEntityCopyWith(_SellEventEntity value, $Res Function(_SellEventEntity) _then) = __$SellEventEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, DateTime startAt, DateTime endAt
});




}
/// @nodoc
class __$SellEventEntityCopyWithImpl<$Res>
    implements _$SellEventEntityCopyWith<$Res> {
  __$SellEventEntityCopyWithImpl(this._self, this._then);

  final _SellEventEntity _self;
  final $Res Function(_SellEventEntity) _then;

/// Create a copy of SellEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_SellEventEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$SellEventsPageEntity {

 List<SellEventEntity> get events; int get totalCount; int get currentPage; int get pageSize; int get totalPages;
/// Create a copy of SellEventsPageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventsPageEntityCopyWith<SellEventsPageEntity> get copyWith => _$SellEventsPageEntityCopyWithImpl<SellEventsPageEntity>(this as SellEventsPageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventsPageEntity&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellEventsPageEntity(events: $events, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $SellEventsPageEntityCopyWith<$Res>  {
  factory $SellEventsPageEntityCopyWith(SellEventsPageEntity value, $Res Function(SellEventsPageEntity) _then) = _$SellEventsPageEntityCopyWithImpl;
@useResult
$Res call({
 List<SellEventEntity> events, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class _$SellEventsPageEntityCopyWithImpl<$Res>
    implements $SellEventsPageEntityCopyWith<$Res> {
  _$SellEventsPageEntityCopyWithImpl(this._self, this._then);

  final SellEventsPageEntity _self;
  final $Res Function(SellEventsPageEntity) _then;

/// Create a copy of SellEventsPageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventsPageEntity].
extension SellEventsPageEntityPatterns on SellEventsPageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventsPageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventsPageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventsPageEntity value)  $default,){
final _that = this;
switch (_that) {
case _SellEventsPageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventsPageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventsPageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellEventEntity> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventsPageEntity() when $default != null:
return $default(_that.events,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellEventEntity> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _SellEventsPageEntity():
return $default(_that.events,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellEventEntity> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _SellEventsPageEntity() when $default != null:
return $default(_that.events,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc


class _SellEventsPageEntity implements SellEventsPageEntity {
  const _SellEventsPageEntity({required final  List<SellEventEntity> events, required this.totalCount, required this.currentPage, required this.pageSize, required this.totalPages}): _events = events;
  

 final  List<SellEventEntity> _events;
@override List<SellEventEntity> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override final  int totalCount;
@override final  int currentPage;
@override final  int pageSize;
@override final  int totalPages;

/// Create a copy of SellEventsPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventsPageEntityCopyWith<_SellEventsPageEntity> get copyWith => __$SellEventsPageEntityCopyWithImpl<_SellEventsPageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventsPageEntity&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellEventsPageEntity(events: $events, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$SellEventsPageEntityCopyWith<$Res> implements $SellEventsPageEntityCopyWith<$Res> {
  factory _$SellEventsPageEntityCopyWith(_SellEventsPageEntity value, $Res Function(_SellEventsPageEntity) _then) = __$SellEventsPageEntityCopyWithImpl;
@override @useResult
$Res call({
 List<SellEventEntity> events, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class __$SellEventsPageEntityCopyWithImpl<$Res>
    implements _$SellEventsPageEntityCopyWith<$Res> {
  __$SellEventsPageEntityCopyWithImpl(this._self, this._then);

  final _SellEventsPageEntity _self;
  final $Res Function(_SellEventsPageEntity) _then;

/// Create a copy of SellEventsPageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_SellEventsPageEntity(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
