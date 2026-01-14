// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_event_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellEventRespDto {

 int get eventId; String get title; String? get posterImageUrl; String get venueName; String get startAt; String get endAt;
/// Create a copy of SellEventRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventRespDtoCopyWith<SellEventRespDto> get copyWith => _$SellEventRespDtoCopyWithImpl<SellEventRespDto>(this as SellEventRespDto, _$identity);

  /// Serializes this SellEventRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,startAt,endAt);

@override
String toString() {
  return 'SellEventRespDto(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class $SellEventRespDtoCopyWith<$Res>  {
  factory $SellEventRespDtoCopyWith(SellEventRespDto value, $Res Function(SellEventRespDto) _then) = _$SellEventRespDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, String startAt, String endAt
});




}
/// @nodoc
class _$SellEventRespDtoCopyWithImpl<$Res>
    implements $SellEventRespDtoCopyWith<$Res> {
  _$SellEventRespDtoCopyWithImpl(this._self, this._then);

  final SellEventRespDto _self;
  final $Res Function(SellEventRespDto) _then;

/// Create a copy of SellEventRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventRespDto].
extension SellEventRespDtoPatterns on SellEventRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellEventRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String startAt,  String endAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String startAt,  String endAt)  $default,) {final _that = this;
switch (_that) {
case _SellEventRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String startAt,  String endAt)?  $default,) {final _that = this;
switch (_that) {
case _SellEventRespDto() when $default != null:
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.startAt,_that.endAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellEventRespDto implements SellEventRespDto {
  const _SellEventRespDto({required this.eventId, required this.title, this.posterImageUrl, required this.venueName, required this.startAt, required this.endAt});
  factory _SellEventRespDto.fromJson(Map<String, dynamic> json) => _$SellEventRespDtoFromJson(json);

@override final  int eventId;
@override final  String title;
@override final  String? posterImageUrl;
@override final  String venueName;
@override final  String startAt;
@override final  String endAt;

/// Create a copy of SellEventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventRespDtoCopyWith<_SellEventRespDto> get copyWith => __$SellEventRespDtoCopyWithImpl<_SellEventRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellEventRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,startAt,endAt);

@override
String toString() {
  return 'SellEventRespDto(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class _$SellEventRespDtoCopyWith<$Res> implements $SellEventRespDtoCopyWith<$Res> {
  factory _$SellEventRespDtoCopyWith(_SellEventRespDto value, $Res Function(_SellEventRespDto) _then) = __$SellEventRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, String startAt, String endAt
});




}
/// @nodoc
class __$SellEventRespDtoCopyWithImpl<$Res>
    implements _$SellEventRespDtoCopyWith<$Res> {
  __$SellEventRespDtoCopyWithImpl(this._self, this._then);

  final _SellEventRespDto _self;
  final $Res Function(_SellEventRespDto) _then;

/// Create a copy of SellEventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_SellEventRespDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellEventsPageRespDto {

 List<SellEventRespDto> get events; int get totalCount; int get currentPage; int get pageSize; int get totalPages;
/// Create a copy of SellEventsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventsPageRespDtoCopyWith<SellEventsPageRespDto> get copyWith => _$SellEventsPageRespDtoCopyWithImpl<SellEventsPageRespDto>(this as SellEventsPageRespDto, _$identity);

  /// Serializes this SellEventsPageRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventsPageRespDto&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellEventsPageRespDto(events: $events, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $SellEventsPageRespDtoCopyWith<$Res>  {
  factory $SellEventsPageRespDtoCopyWith(SellEventsPageRespDto value, $Res Function(SellEventsPageRespDto) _then) = _$SellEventsPageRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SellEventRespDto> events, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class _$SellEventsPageRespDtoCopyWithImpl<$Res>
    implements $SellEventsPageRespDtoCopyWith<$Res> {
  _$SellEventsPageRespDtoCopyWithImpl(this._self, this._then);

  final SellEventsPageRespDto _self;
  final $Res Function(SellEventsPageRespDto) _then;

/// Create a copy of SellEventsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventsPageRespDto].
extension SellEventsPageRespDtoPatterns on SellEventsPageRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventsPageRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventsPageRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventsPageRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellEventsPageRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventsPageRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventsPageRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellEventRespDto> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventsPageRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellEventRespDto> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _SellEventsPageRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellEventRespDto> events,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _SellEventsPageRespDto() when $default != null:
return $default(_that.events,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellEventsPageRespDto implements SellEventsPageRespDto {
  const _SellEventsPageRespDto({required final  List<SellEventRespDto> events, this.totalCount = 0, this.currentPage = 1, this.pageSize = 20, this.totalPages = 1}): _events = events;
  factory _SellEventsPageRespDto.fromJson(Map<String, dynamic> json) => _$SellEventsPageRespDtoFromJson(json);

 final  List<SellEventRespDto> _events;
@override List<SellEventRespDto> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  int totalCount;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  int totalPages;

/// Create a copy of SellEventsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventsPageRespDtoCopyWith<_SellEventsPageRespDto> get copyWith => __$SellEventsPageRespDtoCopyWithImpl<_SellEventsPageRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellEventsPageRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventsPageRespDto&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellEventsPageRespDto(events: $events, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$SellEventsPageRespDtoCopyWith<$Res> implements $SellEventsPageRespDtoCopyWith<$Res> {
  factory _$SellEventsPageRespDtoCopyWith(_SellEventsPageRespDto value, $Res Function(_SellEventsPageRespDto) _then) = __$SellEventsPageRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SellEventRespDto> events, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class __$SellEventsPageRespDtoCopyWithImpl<$Res>
    implements _$SellEventsPageRespDtoCopyWith<$Res> {
  __$SellEventsPageRespDtoCopyWithImpl(this._self, this._then);

  final _SellEventsPageRespDto _self;
  final $Res Function(_SellEventsPageRespDto) _then;

/// Create a copy of SellEventsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_SellEventsPageRespDto(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
