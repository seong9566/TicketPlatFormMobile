// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventGroupEntity {

 int get eventId; String get eventTitle; String? get posterImageUrl; String? get venueName; DateTime? get earliestEventDatetime; int get totalCount; int get onSaleCount; int get completedCount; int get settlingCount; String? get representativeSeatInfo;
/// Create a copy of EventGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventGroupEntityCopyWith<EventGroupEntity> get copyWith => _$EventGroupEntityCopyWithImpl<EventGroupEntity>(this as EventGroupEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventGroupEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.earliestEventDatetime, earliestEventDatetime) || other.earliestEventDatetime == earliestEventDatetime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.onSaleCount, onSaleCount) || other.onSaleCount == onSaleCount)&&(identical(other.completedCount, completedCount) || other.completedCount == completedCount)&&(identical(other.settlingCount, settlingCount) || other.settlingCount == settlingCount)&&(identical(other.representativeSeatInfo, representativeSeatInfo) || other.representativeSeatInfo == representativeSeatInfo));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,venueName,earliestEventDatetime,totalCount,onSaleCount,completedCount,settlingCount,representativeSeatInfo);

@override
String toString() {
  return 'EventGroupEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, venueName: $venueName, earliestEventDatetime: $earliestEventDatetime, totalCount: $totalCount, onSaleCount: $onSaleCount, completedCount: $completedCount, settlingCount: $settlingCount, representativeSeatInfo: $representativeSeatInfo)';
}


}

/// @nodoc
abstract mixin class $EventGroupEntityCopyWith<$Res>  {
  factory $EventGroupEntityCopyWith(EventGroupEntity value, $Res Function(EventGroupEntity) _then) = _$EventGroupEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? venueName, DateTime? earliestEventDatetime, int totalCount, int onSaleCount, int completedCount, int settlingCount, String? representativeSeatInfo
});




}
/// @nodoc
class _$EventGroupEntityCopyWithImpl<$Res>
    implements $EventGroupEntityCopyWith<$Res> {
  _$EventGroupEntityCopyWithImpl(this._self, this._then);

  final EventGroupEntity _self;
  final $Res Function(EventGroupEntity) _then;

/// Create a copy of EventGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? venueName = freezed,Object? earliestEventDatetime = freezed,Object? totalCount = null,Object? onSaleCount = null,Object? completedCount = null,Object? settlingCount = null,Object? representativeSeatInfo = freezed,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,earliestEventDatetime: freezed == earliestEventDatetime ? _self.earliestEventDatetime : earliestEventDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,onSaleCount: null == onSaleCount ? _self.onSaleCount : onSaleCount // ignore: cast_nullable_to_non_nullable
as int,completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,settlingCount: null == settlingCount ? _self.settlingCount : settlingCount // ignore: cast_nullable_to_non_nullable
as int,representativeSeatInfo: freezed == representativeSeatInfo ? _self.representativeSeatInfo : representativeSeatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventGroupEntity].
extension EventGroupEntityPatterns on EventGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventGroupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  DateTime? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventGroupEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.venueName,_that.earliestEventDatetime,_that.totalCount,_that.onSaleCount,_that.completedCount,_that.settlingCount,_that.representativeSeatInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  DateTime? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)  $default,) {final _that = this;
switch (_that) {
case _EventGroupEntity():
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.venueName,_that.earliestEventDatetime,_that.totalCount,_that.onSaleCount,_that.completedCount,_that.settlingCount,_that.representativeSeatInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  DateTime? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)?  $default,) {final _that = this;
switch (_that) {
case _EventGroupEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.venueName,_that.earliestEventDatetime,_that.totalCount,_that.onSaleCount,_that.completedCount,_that.settlingCount,_that.representativeSeatInfo);case _:
  return null;

}
}

}

/// @nodoc


class _EventGroupEntity implements EventGroupEntity {
  const _EventGroupEntity({required this.eventId, required this.eventTitle, this.posterImageUrl, this.venueName, this.earliestEventDatetime, required this.totalCount, required this.onSaleCount, required this.completedCount, required this.settlingCount, this.representativeSeatInfo});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String? posterImageUrl;
@override final  String? venueName;
@override final  DateTime? earliestEventDatetime;
@override final  int totalCount;
@override final  int onSaleCount;
@override final  int completedCount;
@override final  int settlingCount;
@override final  String? representativeSeatInfo;

/// Create a copy of EventGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventGroupEntityCopyWith<_EventGroupEntity> get copyWith => __$EventGroupEntityCopyWithImpl<_EventGroupEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGroupEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.earliestEventDatetime, earliestEventDatetime) || other.earliestEventDatetime == earliestEventDatetime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.onSaleCount, onSaleCount) || other.onSaleCount == onSaleCount)&&(identical(other.completedCount, completedCount) || other.completedCount == completedCount)&&(identical(other.settlingCount, settlingCount) || other.settlingCount == settlingCount)&&(identical(other.representativeSeatInfo, representativeSeatInfo) || other.representativeSeatInfo == representativeSeatInfo));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,venueName,earliestEventDatetime,totalCount,onSaleCount,completedCount,settlingCount,representativeSeatInfo);

@override
String toString() {
  return 'EventGroupEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, venueName: $venueName, earliestEventDatetime: $earliestEventDatetime, totalCount: $totalCount, onSaleCount: $onSaleCount, completedCount: $completedCount, settlingCount: $settlingCount, representativeSeatInfo: $representativeSeatInfo)';
}


}

/// @nodoc
abstract mixin class _$EventGroupEntityCopyWith<$Res> implements $EventGroupEntityCopyWith<$Res> {
  factory _$EventGroupEntityCopyWith(_EventGroupEntity value, $Res Function(_EventGroupEntity) _then) = __$EventGroupEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? venueName, DateTime? earliestEventDatetime, int totalCount, int onSaleCount, int completedCount, int settlingCount, String? representativeSeatInfo
});




}
/// @nodoc
class __$EventGroupEntityCopyWithImpl<$Res>
    implements _$EventGroupEntityCopyWith<$Res> {
  __$EventGroupEntityCopyWithImpl(this._self, this._then);

  final _EventGroupEntity _self;
  final $Res Function(_EventGroupEntity) _then;

/// Create a copy of EventGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? venueName = freezed,Object? earliestEventDatetime = freezed,Object? totalCount = null,Object? onSaleCount = null,Object? completedCount = null,Object? settlingCount = null,Object? representativeSeatInfo = freezed,}) {
  return _then(_EventGroupEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,earliestEventDatetime: freezed == earliestEventDatetime ? _self.earliestEventDatetime : earliestEventDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,onSaleCount: null == onSaleCount ? _self.onSaleCount : onSaleCount // ignore: cast_nullable_to_non_nullable
as int,completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,settlingCount: null == settlingCount ? _self.settlingCount : settlingCount // ignore: cast_nullable_to_non_nullable
as int,representativeSeatInfo: freezed == representativeSeatInfo ? _self.representativeSeatInfo : representativeSeatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SalesDashboardEntity {

 List<EventGroupEntity> get eventGroups; int get page; int get size; int get totalCount; bool get hasMore;
/// Create a copy of SalesDashboardEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesDashboardEntityCopyWith<SalesDashboardEntity> get copyWith => _$SalesDashboardEntityCopyWithImpl<SalesDashboardEntity>(this as SalesDashboardEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesDashboardEntity&&const DeepCollectionEquality().equals(other.eventGroups, eventGroups)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(eventGroups),page,size,totalCount,hasMore);

@override
String toString() {
  return 'SalesDashboardEntity(eventGroups: $eventGroups, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $SalesDashboardEntityCopyWith<$Res>  {
  factory $SalesDashboardEntityCopyWith(SalesDashboardEntity value, $Res Function(SalesDashboardEntity) _then) = _$SalesDashboardEntityCopyWithImpl;
@useResult
$Res call({
 List<EventGroupEntity> eventGroups, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class _$SalesDashboardEntityCopyWithImpl<$Res>
    implements $SalesDashboardEntityCopyWith<$Res> {
  _$SalesDashboardEntityCopyWithImpl(this._self, this._then);

  final SalesDashboardEntity _self;
  final $Res Function(SalesDashboardEntity) _then;

/// Create a copy of SalesDashboardEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventGroups = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
eventGroups: null == eventGroups ? _self.eventGroups : eventGroups // ignore: cast_nullable_to_non_nullable
as List<EventGroupEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesDashboardEntity].
extension SalesDashboardEntityPatterns on SalesDashboardEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesDashboardEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesDashboardEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesDashboardEntity value)  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesDashboardEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventGroupEntity> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesDashboardEntity() when $default != null:
return $default(_that.eventGroups,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventGroupEntity> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardEntity():
return $default(_that.eventGroups,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventGroupEntity> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardEntity() when $default != null:
return $default(_that.eventGroups,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _SalesDashboardEntity implements SalesDashboardEntity {
  const _SalesDashboardEntity({required final  List<EventGroupEntity> eventGroups, required this.page, required this.size, required this.totalCount, required this.hasMore}): _eventGroups = eventGroups;
  

 final  List<EventGroupEntity> _eventGroups;
@override List<EventGroupEntity> get eventGroups {
  if (_eventGroups is EqualUnmodifiableListView) return _eventGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventGroups);
}

@override final  int page;
@override final  int size;
@override final  int totalCount;
@override final  bool hasMore;

/// Create a copy of SalesDashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesDashboardEntityCopyWith<_SalesDashboardEntity> get copyWith => __$SalesDashboardEntityCopyWithImpl<_SalesDashboardEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesDashboardEntity&&const DeepCollectionEquality().equals(other._eventGroups, _eventGroups)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_eventGroups),page,size,totalCount,hasMore);

@override
String toString() {
  return 'SalesDashboardEntity(eventGroups: $eventGroups, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$SalesDashboardEntityCopyWith<$Res> implements $SalesDashboardEntityCopyWith<$Res> {
  factory _$SalesDashboardEntityCopyWith(_SalesDashboardEntity value, $Res Function(_SalesDashboardEntity) _then) = __$SalesDashboardEntityCopyWithImpl;
@override @useResult
$Res call({
 List<EventGroupEntity> eventGroups, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class __$SalesDashboardEntityCopyWithImpl<$Res>
    implements _$SalesDashboardEntityCopyWith<$Res> {
  __$SalesDashboardEntityCopyWithImpl(this._self, this._then);

  final _SalesDashboardEntity _self;
  final $Res Function(_SalesDashboardEntity) _then;

/// Create a copy of SalesDashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventGroups = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_SalesDashboardEntity(
eventGroups: null == eventGroups ? _self._eventGroups : eventGroups // ignore: cast_nullable_to_non_nullable
as List<EventGroupEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
