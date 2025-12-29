// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventRespDto {

 int get eventId; String get eventTitle; String get eventPosterImageUrl; String get startAt; String get endAt; String get venueName; int? get artistId; String? get artistName; String? get artistProfileImageUrl; String get eventCreatedAt; bool get isNew;
/// Create a copy of EventRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventRespDtoCopyWith<EventRespDto> get copyWith => _$EventRespDtoCopyWithImpl<EventRespDto>(this as EventRespDto, _$identity);

  /// Serializes this EventRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.artistProfileImageUrl, artistProfileImageUrl) || other.artistProfileImageUrl == artistProfileImageUrl)&&(identical(other.eventCreatedAt, eventCreatedAt) || other.eventCreatedAt == eventCreatedAt)&&(identical(other.isNew, isNew) || other.isNew == isNew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,artistId,artistName,artistProfileImageUrl,eventCreatedAt,isNew);

@override
String toString() {
  return 'EventRespDto(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, artistId: $artistId, artistName: $artistName, artistProfileImageUrl: $artistProfileImageUrl, eventCreatedAt: $eventCreatedAt, isNew: $isNew)';
}


}

/// @nodoc
abstract mixin class $EventRespDtoCopyWith<$Res>  {
  factory $EventRespDtoCopyWith(EventRespDto value, $Res Function(EventRespDto) _then) = _$EventRespDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String eventPosterImageUrl, String startAt, String endAt, String venueName, int? artistId, String? artistName, String? artistProfileImageUrl, String eventCreatedAt, bool isNew
});




}
/// @nodoc
class _$EventRespDtoCopyWithImpl<$Res>
    implements $EventRespDtoCopyWith<$Res> {
  _$EventRespDtoCopyWithImpl(this._self, this._then);

  final EventRespDto _self;
  final $Res Function(EventRespDto) _then;

/// Create a copy of EventRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? artistId = freezed,Object? artistName = freezed,Object? artistProfileImageUrl = freezed,Object? eventCreatedAt = null,Object? isNew = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,artistProfileImageUrl: freezed == artistProfileImageUrl ? _self.artistProfileImageUrl : artistProfileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventCreatedAt: null == eventCreatedAt ? _self.eventCreatedAt : eventCreatedAt // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventRespDto].
extension EventRespDtoPatterns on EventRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventRespDto value)  $default,){
final _that = this;
switch (_that) {
case _EventRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  int? artistId,  String? artistName,  String? artistProfileImageUrl,  String eventCreatedAt,  bool isNew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.artistId,_that.artistName,_that.artistProfileImageUrl,_that.eventCreatedAt,_that.isNew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  int? artistId,  String? artistName,  String? artistProfileImageUrl,  String eventCreatedAt,  bool isNew)  $default,) {final _that = this;
switch (_that) {
case _EventRespDto():
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.artistId,_that.artistName,_that.artistProfileImageUrl,_that.eventCreatedAt,_that.isNew);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  int? artistId,  String? artistName,  String? artistProfileImageUrl,  String eventCreatedAt,  bool isNew)?  $default,) {final _that = this;
switch (_that) {
case _EventRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.artistId,_that.artistName,_that.artistProfileImageUrl,_that.eventCreatedAt,_that.isNew);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventRespDto implements EventRespDto {
  const _EventRespDto({required this.eventId, required this.eventTitle, required this.eventPosterImageUrl, required this.startAt, required this.endAt, required this.venueName, required this.artistId, required this.artistName, required this.artistProfileImageUrl, required this.eventCreatedAt, required this.isNew});
  factory _EventRespDto.fromJson(Map<String, dynamic> json) => _$EventRespDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String eventPosterImageUrl;
@override final  String startAt;
@override final  String endAt;
@override final  String venueName;
@override final  int? artistId;
@override final  String? artistName;
@override final  String? artistProfileImageUrl;
@override final  String eventCreatedAt;
@override final  bool isNew;

/// Create a copy of EventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventRespDtoCopyWith<_EventRespDto> get copyWith => __$EventRespDtoCopyWithImpl<_EventRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.artistProfileImageUrl, artistProfileImageUrl) || other.artistProfileImageUrl == artistProfileImageUrl)&&(identical(other.eventCreatedAt, eventCreatedAt) || other.eventCreatedAt == eventCreatedAt)&&(identical(other.isNew, isNew) || other.isNew == isNew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,artistId,artistName,artistProfileImageUrl,eventCreatedAt,isNew);

@override
String toString() {
  return 'EventRespDto(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, artistId: $artistId, artistName: $artistName, artistProfileImageUrl: $artistProfileImageUrl, eventCreatedAt: $eventCreatedAt, isNew: $isNew)';
}


}

/// @nodoc
abstract mixin class _$EventRespDtoCopyWith<$Res> implements $EventRespDtoCopyWith<$Res> {
  factory _$EventRespDtoCopyWith(_EventRespDto value, $Res Function(_EventRespDto) _then) = __$EventRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String eventPosterImageUrl, String startAt, String endAt, String venueName, int? artistId, String? artistName, String? artistProfileImageUrl, String eventCreatedAt, bool isNew
});




}
/// @nodoc
class __$EventRespDtoCopyWithImpl<$Res>
    implements _$EventRespDtoCopyWith<$Res> {
  __$EventRespDtoCopyWithImpl(this._self, this._then);

  final _EventRespDto _self;
  final $Res Function(_EventRespDto) _then;

/// Create a copy of EventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? artistId = freezed,Object? artistName = freezed,Object? artistProfileImageUrl = freezed,Object? eventCreatedAt = null,Object? isNew = null,}) {
  return _then(_EventRespDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,artistProfileImageUrl: freezed == artistProfileImageUrl ? _self.artistProfileImageUrl : artistProfileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventCreatedAt: null == eventCreatedAt ? _self.eventCreatedAt : eventCreatedAt // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$EventListRespDto {

 List<EventRespDto> get data;
/// Create a copy of EventListRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventListRespDtoCopyWith<EventListRespDto> get copyWith => _$EventListRespDtoCopyWithImpl<EventListRespDto>(this as EventListRespDto, _$identity);

  /// Serializes this EventListRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventListRespDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EventListRespDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $EventListRespDtoCopyWith<$Res>  {
  factory $EventListRespDtoCopyWith(EventListRespDto value, $Res Function(EventListRespDto) _then) = _$EventListRespDtoCopyWithImpl;
@useResult
$Res call({
 List<EventRespDto> data
});




}
/// @nodoc
class _$EventListRespDtoCopyWithImpl<$Res>
    implements $EventListRespDtoCopyWith<$Res> {
  _$EventListRespDtoCopyWithImpl(this._self, this._then);

  final EventListRespDto _self;
  final $Res Function(EventListRespDto) _then;

/// Create a copy of EventListRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EventRespDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventListRespDto].
extension EventListRespDtoPatterns on EventListRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventListRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventListRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventListRespDto value)  $default,){
final _that = this;
switch (_that) {
case _EventListRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventListRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventListRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventRespDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventListRespDto() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventRespDto> data)  $default,) {final _that = this;
switch (_that) {
case _EventListRespDto():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventRespDto> data)?  $default,) {final _that = this;
switch (_that) {
case _EventListRespDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventListRespDto implements EventListRespDto {
  const _EventListRespDto({final  List<EventRespDto> data = const []}): _data = data;
  factory _EventListRespDto.fromJson(Map<String, dynamic> json) => _$EventListRespDtoFromJson(json);

 final  List<EventRespDto> _data;
@override@JsonKey() List<EventRespDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of EventListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventListRespDtoCopyWith<_EventListRespDto> get copyWith => __$EventListRespDtoCopyWithImpl<_EventListRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventListRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventListRespDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EventListRespDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventListRespDtoCopyWith<$Res> implements $EventListRespDtoCopyWith<$Res> {
  factory _$EventListRespDtoCopyWith(_EventListRespDto value, $Res Function(_EventListRespDto) _then) = __$EventListRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<EventRespDto> data
});




}
/// @nodoc
class __$EventListRespDtoCopyWithImpl<$Res>
    implements _$EventListRespDtoCopyWith<$Res> {
  __$EventListRespDtoCopyWithImpl(this._self, this._then);

  final _EventListRespDto _self;
  final $Res Function(_EventListRespDto) _then;

/// Create a copy of EventListRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EventListRespDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EventRespDto>,
  ));
}


}

// dart format on
