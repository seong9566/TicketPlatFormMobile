// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_dashboard_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesDashboardRespDto {

 List<EventGroupItemDto> get eventGroups; int get page; int get size; int get totalCount; bool get hasMore;
/// Create a copy of SalesDashboardRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesDashboardRespDtoCopyWith<SalesDashboardRespDto> get copyWith => _$SalesDashboardRespDtoCopyWithImpl<SalesDashboardRespDto>(this as SalesDashboardRespDto, _$identity);

  /// Serializes this SalesDashboardRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesDashboardRespDto&&const DeepCollectionEquality().equals(other.eventGroups, eventGroups)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(eventGroups),page,size,totalCount,hasMore);

@override
String toString() {
  return 'SalesDashboardRespDto(eventGroups: $eventGroups, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $SalesDashboardRespDtoCopyWith<$Res>  {
  factory $SalesDashboardRespDtoCopyWith(SalesDashboardRespDto value, $Res Function(SalesDashboardRespDto) _then) = _$SalesDashboardRespDtoCopyWithImpl;
@useResult
$Res call({
 List<EventGroupItemDto> eventGroups, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class _$SalesDashboardRespDtoCopyWithImpl<$Res>
    implements $SalesDashboardRespDtoCopyWith<$Res> {
  _$SalesDashboardRespDtoCopyWithImpl(this._self, this._then);

  final SalesDashboardRespDto _self;
  final $Res Function(SalesDashboardRespDto) _then;

/// Create a copy of SalesDashboardRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventGroups = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
eventGroups: null == eventGroups ? _self.eventGroups : eventGroups // ignore: cast_nullable_to_non_nullable
as List<EventGroupItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesDashboardRespDto].
extension SalesDashboardRespDtoPatterns on SalesDashboardRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesDashboardRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesDashboardRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesDashboardRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesDashboardRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventGroupItemDto> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesDashboardRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventGroupItemDto> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventGroupItemDto> eventGroups,  int page,  int size,  int totalCount,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardRespDto() when $default != null:
return $default(_that.eventGroups,_that.page,_that.size,_that.totalCount,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesDashboardRespDto implements SalesDashboardRespDto {
  const _SalesDashboardRespDto({required final  List<EventGroupItemDto> eventGroups, required this.page, required this.size, required this.totalCount, required this.hasMore}): _eventGroups = eventGroups;
  factory _SalesDashboardRespDto.fromJson(Map<String, dynamic> json) => _$SalesDashboardRespDtoFromJson(json);

 final  List<EventGroupItemDto> _eventGroups;
@override List<EventGroupItemDto> get eventGroups {
  if (_eventGroups is EqualUnmodifiableListView) return _eventGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventGroups);
}

@override final  int page;
@override final  int size;
@override final  int totalCount;
@override final  bool hasMore;

/// Create a copy of SalesDashboardRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesDashboardRespDtoCopyWith<_SalesDashboardRespDto> get copyWith => __$SalesDashboardRespDtoCopyWithImpl<_SalesDashboardRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesDashboardRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesDashboardRespDto&&const DeepCollectionEquality().equals(other._eventGroups, _eventGroups)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_eventGroups),page,size,totalCount,hasMore);

@override
String toString() {
  return 'SalesDashboardRespDto(eventGroups: $eventGroups, page: $page, size: $size, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$SalesDashboardRespDtoCopyWith<$Res> implements $SalesDashboardRespDtoCopyWith<$Res> {
  factory _$SalesDashboardRespDtoCopyWith(_SalesDashboardRespDto value, $Res Function(_SalesDashboardRespDto) _then) = __$SalesDashboardRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<EventGroupItemDto> eventGroups, int page, int size, int totalCount, bool hasMore
});




}
/// @nodoc
class __$SalesDashboardRespDtoCopyWithImpl<$Res>
    implements _$SalesDashboardRespDtoCopyWith<$Res> {
  __$SalesDashboardRespDtoCopyWithImpl(this._self, this._then);

  final _SalesDashboardRespDto _self;
  final $Res Function(_SalesDashboardRespDto) _then;

/// Create a copy of SalesDashboardRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventGroups = null,Object? page = null,Object? size = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_SalesDashboardRespDto(
eventGroups: null == eventGroups ? _self._eventGroups : eventGroups // ignore: cast_nullable_to_non_nullable
as List<EventGroupItemDto>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$EventGroupItemDto {

 int get eventId; String get eventTitle; String? get posterImageUrl; String? get venueName; String? get earliestEventDatetime; int get totalCount; int get onSaleCount; int get completedCount; int get settlingCount; String? get representativeSeatInfo;
/// Create a copy of EventGroupItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventGroupItemDtoCopyWith<EventGroupItemDto> get copyWith => _$EventGroupItemDtoCopyWithImpl<EventGroupItemDto>(this as EventGroupItemDto, _$identity);

  /// Serializes this EventGroupItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventGroupItemDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.earliestEventDatetime, earliestEventDatetime) || other.earliestEventDatetime == earliestEventDatetime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.onSaleCount, onSaleCount) || other.onSaleCount == onSaleCount)&&(identical(other.completedCount, completedCount) || other.completedCount == completedCount)&&(identical(other.settlingCount, settlingCount) || other.settlingCount == settlingCount)&&(identical(other.representativeSeatInfo, representativeSeatInfo) || other.representativeSeatInfo == representativeSeatInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,venueName,earliestEventDatetime,totalCount,onSaleCount,completedCount,settlingCount,representativeSeatInfo);

@override
String toString() {
  return 'EventGroupItemDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, venueName: $venueName, earliestEventDatetime: $earliestEventDatetime, totalCount: $totalCount, onSaleCount: $onSaleCount, completedCount: $completedCount, settlingCount: $settlingCount, representativeSeatInfo: $representativeSeatInfo)';
}


}

/// @nodoc
abstract mixin class $EventGroupItemDtoCopyWith<$Res>  {
  factory $EventGroupItemDtoCopyWith(EventGroupItemDto value, $Res Function(EventGroupItemDto) _then) = _$EventGroupItemDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? venueName, String? earliestEventDatetime, int totalCount, int onSaleCount, int completedCount, int settlingCount, String? representativeSeatInfo
});




}
/// @nodoc
class _$EventGroupItemDtoCopyWithImpl<$Res>
    implements $EventGroupItemDtoCopyWith<$Res> {
  _$EventGroupItemDtoCopyWithImpl(this._self, this._then);

  final EventGroupItemDto _self;
  final $Res Function(EventGroupItemDto) _then;

/// Create a copy of EventGroupItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? venueName = freezed,Object? earliestEventDatetime = freezed,Object? totalCount = null,Object? onSaleCount = null,Object? completedCount = null,Object? settlingCount = null,Object? representativeSeatInfo = freezed,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,earliestEventDatetime: freezed == earliestEventDatetime ? _self.earliestEventDatetime : earliestEventDatetime // ignore: cast_nullable_to_non_nullable
as String?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,onSaleCount: null == onSaleCount ? _self.onSaleCount : onSaleCount // ignore: cast_nullable_to_non_nullable
as int,completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,settlingCount: null == settlingCount ? _self.settlingCount : settlingCount // ignore: cast_nullable_to_non_nullable
as int,representativeSeatInfo: freezed == representativeSeatInfo ? _self.representativeSeatInfo : representativeSeatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventGroupItemDto].
extension EventGroupItemDtoPatterns on EventGroupItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventGroupItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventGroupItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventGroupItemDto value)  $default,){
final _that = this;
switch (_that) {
case _EventGroupItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventGroupItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventGroupItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  String? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventGroupItemDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  String? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)  $default,) {final _that = this;
switch (_that) {
case _EventGroupItemDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? venueName,  String? earliestEventDatetime,  int totalCount,  int onSaleCount,  int completedCount,  int settlingCount,  String? representativeSeatInfo)?  $default,) {final _that = this;
switch (_that) {
case _EventGroupItemDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.venueName,_that.earliestEventDatetime,_that.totalCount,_that.onSaleCount,_that.completedCount,_that.settlingCount,_that.representativeSeatInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventGroupItemDto implements EventGroupItemDto {
  const _EventGroupItemDto({required this.eventId, required this.eventTitle, this.posterImageUrl, this.venueName, this.earliestEventDatetime, required this.totalCount, required this.onSaleCount, required this.completedCount, required this.settlingCount, this.representativeSeatInfo});
  factory _EventGroupItemDto.fromJson(Map<String, dynamic> json) => _$EventGroupItemDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String? posterImageUrl;
@override final  String? venueName;
@override final  String? earliestEventDatetime;
@override final  int totalCount;
@override final  int onSaleCount;
@override final  int completedCount;
@override final  int settlingCount;
@override final  String? representativeSeatInfo;

/// Create a copy of EventGroupItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventGroupItemDtoCopyWith<_EventGroupItemDto> get copyWith => __$EventGroupItemDtoCopyWithImpl<_EventGroupItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventGroupItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGroupItemDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.earliestEventDatetime, earliestEventDatetime) || other.earliestEventDatetime == earliestEventDatetime)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.onSaleCount, onSaleCount) || other.onSaleCount == onSaleCount)&&(identical(other.completedCount, completedCount) || other.completedCount == completedCount)&&(identical(other.settlingCount, settlingCount) || other.settlingCount == settlingCount)&&(identical(other.representativeSeatInfo, representativeSeatInfo) || other.representativeSeatInfo == representativeSeatInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,venueName,earliestEventDatetime,totalCount,onSaleCount,completedCount,settlingCount,representativeSeatInfo);

@override
String toString() {
  return 'EventGroupItemDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, venueName: $venueName, earliestEventDatetime: $earliestEventDatetime, totalCount: $totalCount, onSaleCount: $onSaleCount, completedCount: $completedCount, settlingCount: $settlingCount, representativeSeatInfo: $representativeSeatInfo)';
}


}

/// @nodoc
abstract mixin class _$EventGroupItemDtoCopyWith<$Res> implements $EventGroupItemDtoCopyWith<$Res> {
  factory _$EventGroupItemDtoCopyWith(_EventGroupItemDto value, $Res Function(_EventGroupItemDto) _then) = __$EventGroupItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? venueName, String? earliestEventDatetime, int totalCount, int onSaleCount, int completedCount, int settlingCount, String? representativeSeatInfo
});




}
/// @nodoc
class __$EventGroupItemDtoCopyWithImpl<$Res>
    implements _$EventGroupItemDtoCopyWith<$Res> {
  __$EventGroupItemDtoCopyWithImpl(this._self, this._then);

  final _EventGroupItemDto _self;
  final $Res Function(_EventGroupItemDto) _then;

/// Create a copy of EventGroupItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? venueName = freezed,Object? earliestEventDatetime = freezed,Object? totalCount = null,Object? onSaleCount = null,Object? completedCount = null,Object? settlingCount = null,Object? representativeSeatInfo = freezed,}) {
  return _then(_EventGroupItemDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,earliestEventDatetime: freezed == earliestEventDatetime ? _self.earliestEventDatetime : earliestEventDatetime // ignore: cast_nullable_to_non_nullable
as String?,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,onSaleCount: null == onSaleCount ? _self.onSaleCount : onSaleCount // ignore: cast_nullable_to_non_nullable
as int,completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,settlingCount: null == settlingCount ? _self.settlingCount : settlingCount // ignore: cast_nullable_to_non_nullable
as int,representativeSeatInfo: freezed == representativeSeatInfo ? _self.representativeSeatInfo : representativeSeatInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
