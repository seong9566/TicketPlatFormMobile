// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketingRespDto {

 int get eventId; String get eventTitle; String get eventPosterImageUrl; String get startAt; String get endAt; String get venueName; String get venueAddress; int? get artistId; String? get artistName; bool get isSoldOutImminent; List<TicketingSeatTypeFilterRespDto> get seatTypeFilters; List<TicketingTicketRespDto> get tickets;
/// Create a copy of TicketingRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingRespDtoCopyWith<TicketingRespDto> get copyWith => _$TicketingRespDtoCopyWithImpl<TicketingRespDto>(this as TicketingRespDto, _$identity);

  /// Serializes this TicketingRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueAddress, venueAddress) || other.venueAddress == venueAddress)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.isSoldOutImminent, isSoldOutImminent) || other.isSoldOutImminent == isSoldOutImminent)&&const DeepCollectionEquality().equals(other.seatTypeFilters, seatTypeFilters)&&const DeepCollectionEquality().equals(other.tickets, tickets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,venueAddress,artistId,artistName,isSoldOutImminent,const DeepCollectionEquality().hash(seatTypeFilters),const DeepCollectionEquality().hash(tickets));

@override
String toString() {
  return 'TicketingRespDto(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, venueAddress: $venueAddress, artistId: $artistId, artistName: $artistName, isSoldOutImminent: $isSoldOutImminent, seatTypeFilters: $seatTypeFilters, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class $TicketingRespDtoCopyWith<$Res>  {
  factory $TicketingRespDtoCopyWith(TicketingRespDto value, $Res Function(TicketingRespDto) _then) = _$TicketingRespDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String eventPosterImageUrl, String startAt, String endAt, String venueName, String venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterRespDto> seatTypeFilters, List<TicketingTicketRespDto> tickets
});




}
/// @nodoc
class _$TicketingRespDtoCopyWithImpl<$Res>
    implements $TicketingRespDtoCopyWith<$Res> {
  _$TicketingRespDtoCopyWithImpl(this._self, this._then);

  final TicketingRespDto _self;
  final $Res Function(TicketingRespDto) _then;

/// Create a copy of TicketingRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? venueAddress = null,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,venueAddress: null == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,isSoldOutImminent: null == isSoldOutImminent ? _self.isSoldOutImminent : isSoldOutImminent // ignore: cast_nullable_to_non_nullable
as bool,seatTypeFilters: null == seatTypeFilters ? _self.seatTypeFilters : seatTypeFilters // ignore: cast_nullable_to_non_nullable
as List<TicketingSeatTypeFilterRespDto>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketRespDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingRespDto].
extension TicketingRespDtoPatterns on TicketingRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketingRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.venueAddress,_that.artistId,_that.artistName,_that.isSoldOutImminent,_that.seatTypeFilters,_that.tickets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)  $default,) {final _that = this;
switch (_that) {
case _TicketingRespDto():
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.venueAddress,_that.artistId,_that.artistName,_that.isSoldOutImminent,_that.seatTypeFilters,_that.tickets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  String startAt,  String endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)?  $default,) {final _that = this;
switch (_that) {
case _TicketingRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.venueAddress,_that.artistId,_that.artistName,_that.isSoldOutImminent,_that.seatTypeFilters,_that.tickets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingRespDto implements TicketingRespDto {
  const _TicketingRespDto({required this.eventId, required this.eventTitle, required this.eventPosterImageUrl, required this.startAt, required this.endAt, required this.venueName, required this.venueAddress, required this.artistId, required this.artistName, required this.isSoldOutImminent, required final  List<TicketingSeatTypeFilterRespDto> seatTypeFilters, required final  List<TicketingTicketRespDto> tickets}): _seatTypeFilters = seatTypeFilters,_tickets = tickets;
  factory _TicketingRespDto.fromJson(Map<String, dynamic> json) => _$TicketingRespDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String eventPosterImageUrl;
@override final  String startAt;
@override final  String endAt;
@override final  String venueName;
@override final  String venueAddress;
@override final  int? artistId;
@override final  String? artistName;
@override final  bool isSoldOutImminent;
 final  List<TicketingSeatTypeFilterRespDto> _seatTypeFilters;
@override List<TicketingSeatTypeFilterRespDto> get seatTypeFilters {
  if (_seatTypeFilters is EqualUnmodifiableListView) return _seatTypeFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatTypeFilters);
}

 final  List<TicketingTicketRespDto> _tickets;
@override List<TicketingTicketRespDto> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}


/// Create a copy of TicketingRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingRespDtoCopyWith<_TicketingRespDto> get copyWith => __$TicketingRespDtoCopyWithImpl<_TicketingRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketingRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueAddress, venueAddress) || other.venueAddress == venueAddress)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.isSoldOutImminent, isSoldOutImminent) || other.isSoldOutImminent == isSoldOutImminent)&&const DeepCollectionEquality().equals(other._seatTypeFilters, _seatTypeFilters)&&const DeepCollectionEquality().equals(other._tickets, _tickets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,venueAddress,artistId,artistName,isSoldOutImminent,const DeepCollectionEquality().hash(_seatTypeFilters),const DeepCollectionEquality().hash(_tickets));

@override
String toString() {
  return 'TicketingRespDto(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, venueAddress: $venueAddress, artistId: $artistId, artistName: $artistName, isSoldOutImminent: $isSoldOutImminent, seatTypeFilters: $seatTypeFilters, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class _$TicketingRespDtoCopyWith<$Res> implements $TicketingRespDtoCopyWith<$Res> {
  factory _$TicketingRespDtoCopyWith(_TicketingRespDto value, $Res Function(_TicketingRespDto) _then) = __$TicketingRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String eventPosterImageUrl, String startAt, String endAt, String venueName, String venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterRespDto> seatTypeFilters, List<TicketingTicketRespDto> tickets
});




}
/// @nodoc
class __$TicketingRespDtoCopyWithImpl<$Res>
    implements _$TicketingRespDtoCopyWith<$Res> {
  __$TicketingRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingRespDto _self;
  final $Res Function(_TicketingRespDto) _then;

/// Create a copy of TicketingRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? venueAddress = null,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_TicketingRespDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,venueAddress: null == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,isSoldOutImminent: null == isSoldOutImminent ? _self.isSoldOutImminent : isSoldOutImminent // ignore: cast_nullable_to_non_nullable
as bool,seatTypeFilters: null == seatTypeFilters ? _self._seatTypeFilters : seatTypeFilters // ignore: cast_nullable_to_non_nullable
as List<TicketingSeatTypeFilterRespDto>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketRespDto>,
  ));
}


}


/// @nodoc
mixin _$TicketingSeatTypeFilterRespDto {

 String get seatTypeName; int get ticketCount;
/// Create a copy of TicketingSeatTypeFilterRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSeatTypeFilterRespDtoCopyWith<TicketingSeatTypeFilterRespDto> get copyWith => _$TicketingSeatTypeFilterRespDtoCopyWithImpl<TicketingSeatTypeFilterRespDto>(this as TicketingSeatTypeFilterRespDto, _$identity);

  /// Serializes this TicketingSeatTypeFilterRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSeatTypeFilterRespDto&&(identical(other.seatTypeName, seatTypeName) || other.seatTypeName == seatTypeName)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seatTypeName,ticketCount);

@override
String toString() {
  return 'TicketingSeatTypeFilterRespDto(seatTypeName: $seatTypeName, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $TicketingSeatTypeFilterRespDtoCopyWith<$Res>  {
  factory $TicketingSeatTypeFilterRespDtoCopyWith(TicketingSeatTypeFilterRespDto value, $Res Function(TicketingSeatTypeFilterRespDto) _then) = _$TicketingSeatTypeFilterRespDtoCopyWithImpl;
@useResult
$Res call({
 String seatTypeName, int ticketCount
});




}
/// @nodoc
class _$TicketingSeatTypeFilterRespDtoCopyWithImpl<$Res>
    implements $TicketingSeatTypeFilterRespDtoCopyWith<$Res> {
  _$TicketingSeatTypeFilterRespDtoCopyWithImpl(this._self, this._then);

  final TicketingSeatTypeFilterRespDto _self;
  final $Res Function(TicketingSeatTypeFilterRespDto) _then;

/// Create a copy of TicketingSeatTypeFilterRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seatTypeName = null,Object? ticketCount = null,}) {
  return _then(_self.copyWith(
seatTypeName: null == seatTypeName ? _self.seatTypeName : seatTypeName // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingSeatTypeFilterRespDto].
extension TicketingSeatTypeFilterRespDtoPatterns on TicketingSeatTypeFilterRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingSeatTypeFilterRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingSeatTypeFilterRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingSeatTypeFilterRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String seatTypeName,  int ticketCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto() when $default != null:
return $default(_that.seatTypeName,_that.ticketCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String seatTypeName,  int ticketCount)  $default,) {final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto():
return $default(_that.seatTypeName,_that.ticketCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String seatTypeName,  int ticketCount)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterRespDto() when $default != null:
return $default(_that.seatTypeName,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingSeatTypeFilterRespDto implements TicketingSeatTypeFilterRespDto {
  const _TicketingSeatTypeFilterRespDto({required this.seatTypeName, required this.ticketCount});
  factory _TicketingSeatTypeFilterRespDto.fromJson(Map<String, dynamic> json) => _$TicketingSeatTypeFilterRespDtoFromJson(json);

@override final  String seatTypeName;
@override final  int ticketCount;

/// Create a copy of TicketingSeatTypeFilterRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSeatTypeFilterRespDtoCopyWith<_TicketingSeatTypeFilterRespDto> get copyWith => __$TicketingSeatTypeFilterRespDtoCopyWithImpl<_TicketingSeatTypeFilterRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketingSeatTypeFilterRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSeatTypeFilterRespDto&&(identical(other.seatTypeName, seatTypeName) || other.seatTypeName == seatTypeName)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seatTypeName,ticketCount);

@override
String toString() {
  return 'TicketingSeatTypeFilterRespDto(seatTypeName: $seatTypeName, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$TicketingSeatTypeFilterRespDtoCopyWith<$Res> implements $TicketingSeatTypeFilterRespDtoCopyWith<$Res> {
  factory _$TicketingSeatTypeFilterRespDtoCopyWith(_TicketingSeatTypeFilterRespDto value, $Res Function(_TicketingSeatTypeFilterRespDto) _then) = __$TicketingSeatTypeFilterRespDtoCopyWithImpl;
@override @useResult
$Res call({
 String seatTypeName, int ticketCount
});




}
/// @nodoc
class __$TicketingSeatTypeFilterRespDtoCopyWithImpl<$Res>
    implements _$TicketingSeatTypeFilterRespDtoCopyWith<$Res> {
  __$TicketingSeatTypeFilterRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingSeatTypeFilterRespDto _self;
  final $Res Function(_TicketingSeatTypeFilterRespDto) _then;

/// Create a copy of TicketingSeatTypeFilterRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seatTypeName = null,Object? ticketCount = null,}) {
  return _then(_TicketingSeatTypeFilterRespDto(
seatTypeName: null == seatTypeName ? _self.seatTypeName : seatTypeName // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TicketingTicketRespDto {

 int get ticketId; String get ticketTitle; String? get seatInfo; String? get seatType; int get price; int get originalPrice; List<String> get seatFeatures; String? get description; String get createdAt; int? get quantity; int? get remainingQuantity; bool get isSingleTicket; List<String> get ticketImages; TicketingSellerRespDto get seller; bool get isFavorited;
/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketRespDtoCopyWith<TicketingTicketRespDto> get copyWith => _$TicketingTicketRespDtoCopyWithImpl<TicketingTicketRespDto>(this as TicketingTicketRespDto, _$identity);

  /// Serializes this TicketingTicketRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.seatFeatures, seatFeatures)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other.ticketImages, ticketImages)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,const DeepCollectionEquality().hash(seatFeatures),description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(ticketImages),seller,isFavorited);

@override
String toString() {
  return 'TicketingTicketRespDto(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, seatFeatures: $seatFeatures, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, seller: $seller, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketRespDtoCopyWith<$Res>  {
  factory $TicketingTicketRespDtoCopyWith(TicketingTicketRespDto value, $Res Function(TicketingTicketRespDto) _then) = _$TicketingTicketRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String ticketTitle, String? seatInfo, String? seatType, int price, int originalPrice, List<String> seatFeatures, String? description, String createdAt, int? quantity, int? remainingQuantity, bool isSingleTicket, List<String> ticketImages, TicketingSellerRespDto seller, bool isFavorited
});


$TicketingSellerRespDtoCopyWith<$Res> get seller;

}
/// @nodoc
class _$TicketingTicketRespDtoCopyWithImpl<$Res>
    implements $TicketingTicketRespDtoCopyWith<$Res> {
  _$TicketingTicketRespDtoCopyWithImpl(this._self, this._then);

  final TicketingTicketRespDto _self;
  final $Res Function(TicketingTicketRespDto) _then;

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = freezed,Object? seatType = freezed,Object? price = null,Object? originalPrice = null,Object? seatFeatures = null,Object? description = freezed,Object? createdAt = null,Object? quantity = freezed,Object? remainingQuantity = freezed,Object? isSingleTicket = null,Object? ticketImages = null,Object? seller = null,Object? isFavorited = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,seatType: freezed == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,seatFeatures: null == seatFeatures ? _self.seatFeatures : seatFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self.ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<$Res> get seller {
  
  return $TicketingSellerRespDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketingTicketRespDto].
extension TicketingTicketRespDtoPatterns on TicketingTicketRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingTicketRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingTicketRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingTicketRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  String createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerRespDto seller,  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  String createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerRespDto seller,  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto():
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String ticketTitle,  String? seatInfo,  String? seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  String createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerRespDto seller,  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingTicketRespDto implements TicketingTicketRespDto {
  const _TicketingTicketRespDto({required this.ticketId, required this.ticketTitle, required this.seatInfo, required this.seatType, required this.price, required this.originalPrice, required final  List<String> seatFeatures, required this.description, required this.createdAt, required this.quantity, required this.remainingQuantity, this.isSingleTicket = false, final  List<String> ticketImages = const [], required this.seller, this.isFavorited = false}): _seatFeatures = seatFeatures,_ticketImages = ticketImages;
  factory _TicketingTicketRespDto.fromJson(Map<String, dynamic> json) => _$TicketingTicketRespDtoFromJson(json);

@override final  int ticketId;
@override final  String ticketTitle;
@override final  String? seatInfo;
@override final  String? seatType;
@override final  int price;
@override final  int originalPrice;
 final  List<String> _seatFeatures;
@override List<String> get seatFeatures {
  if (_seatFeatures is EqualUnmodifiableListView) return _seatFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatFeatures);
}

@override final  String? description;
@override final  String createdAt;
@override final  int? quantity;
@override final  int? remainingQuantity;
@override@JsonKey() final  bool isSingleTicket;
 final  List<String> _ticketImages;
@override@JsonKey() List<String> get ticketImages {
  if (_ticketImages is EqualUnmodifiableListView) return _ticketImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketImages);
}

@override final  TicketingSellerRespDto seller;
@override@JsonKey() final  bool isFavorited;

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketRespDtoCopyWith<_TicketingTicketRespDto> get copyWith => __$TicketingTicketRespDtoCopyWithImpl<_TicketingTicketRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketingTicketRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._seatFeatures, _seatFeatures)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other._ticketImages, _ticketImages)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,const DeepCollectionEquality().hash(_seatFeatures),description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(_ticketImages),seller,isFavorited);

@override
String toString() {
  return 'TicketingTicketRespDto(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, seatFeatures: $seatFeatures, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, seller: $seller, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketRespDtoCopyWith<$Res> implements $TicketingTicketRespDtoCopyWith<$Res> {
  factory _$TicketingTicketRespDtoCopyWith(_TicketingTicketRespDto value, $Res Function(_TicketingTicketRespDto) _then) = __$TicketingTicketRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String ticketTitle, String? seatInfo, String? seatType, int price, int originalPrice, List<String> seatFeatures, String? description, String createdAt, int? quantity, int? remainingQuantity, bool isSingleTicket, List<String> ticketImages, TicketingSellerRespDto seller, bool isFavorited
});


@override $TicketingSellerRespDtoCopyWith<$Res> get seller;

}
/// @nodoc
class __$TicketingTicketRespDtoCopyWithImpl<$Res>
    implements _$TicketingTicketRespDtoCopyWith<$Res> {
  __$TicketingTicketRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingTicketRespDto _self;
  final $Res Function(_TicketingTicketRespDto) _then;

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = freezed,Object? seatType = freezed,Object? price = null,Object? originalPrice = null,Object? seatFeatures = null,Object? description = freezed,Object? createdAt = null,Object? quantity = freezed,Object? remainingQuantity = freezed,Object? isSingleTicket = null,Object? ticketImages = null,Object? seller = null,Object? isFavorited = null,}) {
  return _then(_TicketingTicketRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,seatType: freezed == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,seatFeatures: null == seatFeatures ? _self._seatFeatures : seatFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self._ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<$Res> get seller {
  
  return $TicketingSellerRespDtoCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// @nodoc
mixin _$TicketingSellerRespDto {

 int get userId; String get nickname; String get profileImageUrl; double get mannerTemperature; int get totalTradeCount; int? get responseRate; bool get isSecurePayment;
/// Create a copy of TicketingSellerRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<TicketingSellerRespDto> get copyWith => _$TicketingSellerRespDtoCopyWithImpl<TicketingSellerRespDto>(this as TicketingSellerRespDto, _$identity);

  /// Serializes this TicketingSellerRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerRespDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerRespDtoCopyWith<$Res>  {
  factory $TicketingSellerRespDtoCopyWith(TicketingSellerRespDto value, $Res Function(TicketingSellerRespDto) _then) = _$TicketingSellerRespDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature, int totalTradeCount, int? responseRate, bool isSecurePayment
});




}
/// @nodoc
class _$TicketingSellerRespDtoCopyWithImpl<$Res>
    implements $TicketingSellerRespDtoCopyWith<$Res> {
  _$TicketingSellerRespDtoCopyWithImpl(this._self, this._then);

  final TicketingSellerRespDto _self;
  final $Res Function(TicketingSellerRespDto) _then;

/// Create a copy of TicketingSellerRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingSellerRespDto].
extension TicketingSellerRespDtoPatterns on TicketingSellerRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingSellerRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingSellerRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingSellerRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment)  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature,  int totalTradeCount,  int? responseRate,  bool isSecurePayment)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingSellerRespDto implements TicketingSellerRespDto {
  const _TicketingSellerRespDto({required this.userId, required this.nickname, required this.profileImageUrl, required this.mannerTemperature, required this.totalTradeCount, required this.responseRate, this.isSecurePayment = false});
  factory _TicketingSellerRespDto.fromJson(Map<String, dynamic> json) => _$TicketingSellerRespDtoFromJson(json);

@override final  int userId;
@override final  String nickname;
@override final  String profileImageUrl;
@override final  double mannerTemperature;
@override final  int totalTradeCount;
@override final  int? responseRate;
@override@JsonKey() final  bool isSecurePayment;

/// Create a copy of TicketingSellerRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSellerRespDtoCopyWith<_TicketingSellerRespDto> get copyWith => __$TicketingSellerRespDtoCopyWithImpl<_TicketingSellerRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketingSellerRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerRespDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerRespDtoCopyWith<$Res> implements $TicketingSellerRespDtoCopyWith<$Res> {
  factory _$TicketingSellerRespDtoCopyWith(_TicketingSellerRespDto value, $Res Function(_TicketingSellerRespDto) _then) = __$TicketingSellerRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature, int totalTradeCount, int? responseRate, bool isSecurePayment
});




}
/// @nodoc
class __$TicketingSellerRespDtoCopyWithImpl<$Res>
    implements _$TicketingSellerRespDtoCopyWith<$Res> {
  __$TicketingSellerRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingSellerRespDto _self;
  final $Res Function(_TicketingSellerRespDto) _then;

/// Create a copy of TicketingSellerRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_TicketingSellerRespDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as int?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
