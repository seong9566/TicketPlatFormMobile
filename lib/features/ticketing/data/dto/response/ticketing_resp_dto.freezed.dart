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

 int get eventId; String get eventTitle; String? get eventPosterImageUrl; String? get startAt; String? get endAt; String? get venueName; String? get venueAddress; int? get artistId; String? get artistName; bool get isSoldOutImminent; List<TicketingSeatTypeFilterRespDto> get seatTypeFilters; List<TicketingTicketRespDto> get tickets;
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
 int eventId, String eventTitle, String? eventPosterImageUrl, String? startAt, String? endAt, String? venueName, String? venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterRespDto> seatTypeFilters, List<TicketingTicketRespDto> tickets
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
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,Object? venueAddress = freezed,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueAddress: freezed == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String?,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  String? startAt,  String? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  String? startAt,  String? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  String? startAt,  String? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterRespDto> seatTypeFilters,  List<TicketingTicketRespDto> tickets)?  $default,) {final _that = this;
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
  const _TicketingRespDto({required this.eventId, required this.eventTitle, this.eventPosterImageUrl, this.startAt, this.endAt, this.venueName, this.venueAddress, this.artistId, this.artistName, this.isSoldOutImminent = false, final  List<TicketingSeatTypeFilterRespDto> seatTypeFilters = const [], final  List<TicketingTicketRespDto> tickets = const []}): _seatTypeFilters = seatTypeFilters,_tickets = tickets;
  factory _TicketingRespDto.fromJson(Map<String, dynamic> json) => _$TicketingRespDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String? eventPosterImageUrl;
@override final  String? startAt;
@override final  String? endAt;
@override final  String? venueName;
@override final  String? venueAddress;
@override final  int? artistId;
@override final  String? artistName;
@override@JsonKey() final  bool isSoldOutImminent;
 final  List<TicketingSeatTypeFilterRespDto> _seatTypeFilters;
@override@JsonKey() List<TicketingSeatTypeFilterRespDto> get seatTypeFilters {
  if (_seatTypeFilters is EqualUnmodifiableListView) return _seatTypeFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatTypeFilters);
}

 final  List<TicketingTicketRespDto> _tickets;
@override@JsonKey() List<TicketingTicketRespDto> get tickets {
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
 int eventId, String eventTitle, String? eventPosterImageUrl, String? startAt, String? endAt, String? venueName, String? venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterRespDto> seatTypeFilters, List<TicketingTicketRespDto> tickets
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
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,Object? venueAddress = freezed,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_TicketingRespDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueAddress: freezed == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String?,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
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
  const _TicketingSeatTypeFilterRespDto({this.seatTypeName = '', this.ticketCount = 0});
  factory _TicketingSeatTypeFilterRespDto.fromJson(Map<String, dynamic> json) => _$TicketingSeatTypeFilterRespDtoFromJson(json);

@override@JsonKey() final  String seatTypeName;
@override@JsonKey() final  int ticketCount;

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
mixin _$TicketFeatureDto {

 int get featureId; String get code; String get nameKo;
/// Create a copy of TicketFeatureDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketFeatureDtoCopyWith<TicketFeatureDto> get copyWith => _$TicketFeatureDtoCopyWithImpl<TicketFeatureDto>(this as TicketFeatureDto, _$identity);

  /// Serializes this TicketFeatureDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketFeatureDto&&(identical(other.featureId, featureId) || other.featureId == featureId)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,featureId,code,nameKo);

@override
String toString() {
  return 'TicketFeatureDto(featureId: $featureId, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class $TicketFeatureDtoCopyWith<$Res>  {
  factory $TicketFeatureDtoCopyWith(TicketFeatureDto value, $Res Function(TicketFeatureDto) _then) = _$TicketFeatureDtoCopyWithImpl;
@useResult
$Res call({
 int featureId, String code, String nameKo
});




}
/// @nodoc
class _$TicketFeatureDtoCopyWithImpl<$Res>
    implements $TicketFeatureDtoCopyWith<$Res> {
  _$TicketFeatureDtoCopyWithImpl(this._self, this._then);

  final TicketFeatureDto _self;
  final $Res Function(TicketFeatureDto) _then;

/// Create a copy of TicketFeatureDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? featureId = null,Object? code = null,Object? nameKo = null,}) {
  return _then(_self.copyWith(
featureId: null == featureId ? _self.featureId : featureId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketFeatureDto].
extension TicketFeatureDtoPatterns on TicketFeatureDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketFeatureDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketFeatureDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketFeatureDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketFeatureDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketFeatureDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketFeatureDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int featureId,  String code,  String nameKo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketFeatureDto() when $default != null:
return $default(_that.featureId,_that.code,_that.nameKo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int featureId,  String code,  String nameKo)  $default,) {final _that = this;
switch (_that) {
case _TicketFeatureDto():
return $default(_that.featureId,_that.code,_that.nameKo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int featureId,  String code,  String nameKo)?  $default,) {final _that = this;
switch (_that) {
case _TicketFeatureDto() when $default != null:
return $default(_that.featureId,_that.code,_that.nameKo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketFeatureDto implements TicketFeatureDto {
  const _TicketFeatureDto({required this.featureId, required this.code, required this.nameKo});
  factory _TicketFeatureDto.fromJson(Map<String, dynamic> json) => _$TicketFeatureDtoFromJson(json);

@override final  int featureId;
@override final  String code;
@override final  String nameKo;

/// Create a copy of TicketFeatureDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketFeatureDtoCopyWith<_TicketFeatureDto> get copyWith => __$TicketFeatureDtoCopyWithImpl<_TicketFeatureDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketFeatureDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketFeatureDto&&(identical(other.featureId, featureId) || other.featureId == featureId)&&(identical(other.code, code) || other.code == code)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,featureId,code,nameKo);

@override
String toString() {
  return 'TicketFeatureDto(featureId: $featureId, code: $code, nameKo: $nameKo)';
}


}

/// @nodoc
abstract mixin class _$TicketFeatureDtoCopyWith<$Res> implements $TicketFeatureDtoCopyWith<$Res> {
  factory _$TicketFeatureDtoCopyWith(_TicketFeatureDto value, $Res Function(_TicketFeatureDto) _then) = __$TicketFeatureDtoCopyWithImpl;
@override @useResult
$Res call({
 int featureId, String code, String nameKo
});




}
/// @nodoc
class __$TicketFeatureDtoCopyWithImpl<$Res>
    implements _$TicketFeatureDtoCopyWith<$Res> {
  __$TicketFeatureDtoCopyWithImpl(this._self, this._then);

  final _TicketFeatureDto _self;
  final $Res Function(_TicketFeatureDto) _then;

/// Create a copy of TicketFeatureDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? featureId = null,Object? code = null,Object? nameKo = null,}) {
  return _then(_TicketFeatureDto(
featureId: null == featureId ? _self.featureId : featureId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TicketingTicketRespDto {

 int get ticketId; int? get seatGradeId; String? get seatGradeCode; String? get seatGradeName; String? get seatGradeNameEn; int? get areaId; String? get area; int? get locationId; String? get locationName; String? get row; int get price; int get originalPrice; int? get totalPrice; bool? get isConsecutive; int? get tradeMethodId; String? get tradeMethodName; List<TicketFeatureDto> get features; bool? get hasTicket; String? get description; String get createdAt; int get quantity; int get remainingQuantity; bool get isSingleTicket; List<String> get ticketImages; bool? get isFavorited; TicketingSellerRespDto get seller; TicketingEventRespDto? get event;
/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketRespDtoCopyWith<TicketingTicketRespDto> get copyWith => _$TicketingTicketRespDtoCopyWithImpl<TicketingTicketRespDto>(this as TicketingTicketRespDto, _$identity);

  /// Serializes this TicketingTicketRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeCode, seatGradeCode) || other.seatGradeCode == seatGradeCode)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.seatGradeNameEn, seatGradeNameEn) || other.seatGradeNameEn == seatGradeNameEn)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.area, area) || other.area == area)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other.ticketImages, ticketImages)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.event, event) || other.event == event));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeCode,seatGradeName,seatGradeNameEn,areaId,area,locationId,locationName,row,price,originalPrice,totalPrice,isConsecutive,tradeMethodId,tradeMethodName,const DeepCollectionEquality().hash(features),hasTicket,description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(ticketImages),isFavorited,seller,event]);

@override
String toString() {
  return 'TicketingTicketRespDto(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeCode: $seatGradeCode, seatGradeName: $seatGradeName, seatGradeNameEn: $seatGradeNameEn, areaId: $areaId, area: $area, locationId: $locationId, locationName: $locationName, row: $row, price: $price, originalPrice: $originalPrice, totalPrice: $totalPrice, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, features: $features, hasTicket: $hasTicket, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, isFavorited: $isFavorited, seller: $seller, event: $event)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketRespDtoCopyWith<$Res>  {
  factory $TicketingTicketRespDtoCopyWith(TicketingTicketRespDto value, $Res Function(TicketingTicketRespDto) _then) = _$TicketingTicketRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeCode, String? seatGradeName, String? seatGradeNameEn, int? areaId, String? area, int? locationId, String? locationName, String? row, int price, int originalPrice, int? totalPrice, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, List<TicketFeatureDto> features, bool? hasTicket, String? description, String createdAt, int quantity, int remainingQuantity, bool isSingleTicket, List<String> ticketImages, bool? isFavorited, TicketingSellerRespDto seller, TicketingEventRespDto? event
});


$TicketingSellerRespDtoCopyWith<$Res> get seller;$TicketingEventRespDtoCopyWith<$Res>? get event;

}
/// @nodoc
class _$TicketingTicketRespDtoCopyWithImpl<$Res>
    implements $TicketingTicketRespDtoCopyWith<$Res> {
  _$TicketingTicketRespDtoCopyWithImpl(this._self, this._then);

  final TicketingTicketRespDto _self;
  final $Res Function(TicketingTicketRespDto) _then;

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeCode = freezed,Object? seatGradeName = freezed,Object? seatGradeNameEn = freezed,Object? areaId = freezed,Object? area = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? totalPrice = freezed,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? features = null,Object? hasTicket = freezed,Object? description = freezed,Object? createdAt = null,Object? quantity = null,Object? remainingQuantity = null,Object? isSingleTicket = null,Object? ticketImages = null,Object? isFavorited = freezed,Object? seller = null,Object? event = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatGradeId: freezed == seatGradeId ? _self.seatGradeId : seatGradeId // ignore: cast_nullable_to_non_nullable
as int?,seatGradeCode: freezed == seatGradeCode ? _self.seatGradeCode : seatGradeCode // ignore: cast_nullable_to_non_nullable
as String?,seatGradeName: freezed == seatGradeName ? _self.seatGradeName : seatGradeName // ignore: cast_nullable_to_non_nullable
as String?,seatGradeNameEn: freezed == seatGradeNameEn ? _self.seatGradeNameEn : seatGradeNameEn // ignore: cast_nullable_to_non_nullable
as String?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,row: freezed == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<TicketFeatureDto>,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self.ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TicketingEventRespDto?,
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
}/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingEventRespDtoCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $TicketingEventRespDtoCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int? totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureDto> features,  bool? hasTicket,  String? description,  String createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerRespDto seller,  TicketingEventRespDto? event)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeCode,_that.seatGradeName,_that.seatGradeNameEn,_that.areaId,_that.area,_that.locationId,_that.locationName,_that.row,_that.price,_that.originalPrice,_that.totalPrice,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.features,_that.hasTicket,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.isFavorited,_that.seller,_that.event);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int? totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureDto> features,  bool? hasTicket,  String? description,  String createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerRespDto seller,  TicketingEventRespDto? event)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto():
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeCode,_that.seatGradeName,_that.seatGradeNameEn,_that.areaId,_that.area,_that.locationId,_that.locationName,_that.row,_that.price,_that.originalPrice,_that.totalPrice,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.features,_that.hasTicket,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.isFavorited,_that.seller,_that.event);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int? totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureDto> features,  bool? hasTicket,  String? description,  String createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerRespDto seller,  TicketingEventRespDto? event)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeCode,_that.seatGradeName,_that.seatGradeNameEn,_that.areaId,_that.area,_that.locationId,_that.locationName,_that.row,_that.price,_that.originalPrice,_that.totalPrice,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.features,_that.hasTicket,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.isFavorited,_that.seller,_that.event);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingTicketRespDto implements TicketingTicketRespDto {
  const _TicketingTicketRespDto({required this.ticketId, this.seatGradeId, this.seatGradeCode, this.seatGradeName, this.seatGradeNameEn, this.areaId, this.area, this.locationId, this.locationName, this.row, this.price = 0, this.originalPrice = 0, this.totalPrice, this.isConsecutive, this.tradeMethodId, this.tradeMethodName, final  List<TicketFeatureDto> features = const [], this.hasTicket, this.description, required this.createdAt, this.quantity = 0, this.remainingQuantity = 0, this.isSingleTicket = false, final  List<String> ticketImages = const [], this.isFavorited, required this.seller, this.event}): _features = features,_ticketImages = ticketImages;
  factory _TicketingTicketRespDto.fromJson(Map<String, dynamic> json) => _$TicketingTicketRespDtoFromJson(json);

@override final  int ticketId;
@override final  int? seatGradeId;
@override final  String? seatGradeCode;
@override final  String? seatGradeName;
@override final  String? seatGradeNameEn;
@override final  int? areaId;
@override final  String? area;
@override final  int? locationId;
@override final  String? locationName;
@override final  String? row;
@override@JsonKey() final  int price;
@override@JsonKey() final  int originalPrice;
@override final  int? totalPrice;
@override final  bool? isConsecutive;
@override final  int? tradeMethodId;
@override final  String? tradeMethodName;
 final  List<TicketFeatureDto> _features;
@override@JsonKey() List<TicketFeatureDto> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override final  bool? hasTicket;
@override final  String? description;
@override final  String createdAt;
@override@JsonKey() final  int quantity;
@override@JsonKey() final  int remainingQuantity;
@override@JsonKey() final  bool isSingleTicket;
 final  List<String> _ticketImages;
@override@JsonKey() List<String> get ticketImages {
  if (_ticketImages is EqualUnmodifiableListView) return _ticketImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketImages);
}

@override final  bool? isFavorited;
@override final  TicketingSellerRespDto seller;
@override final  TicketingEventRespDto? event;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeCode, seatGradeCode) || other.seatGradeCode == seatGradeCode)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.seatGradeNameEn, seatGradeNameEn) || other.seatGradeNameEn == seatGradeNameEn)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.area, area) || other.area == area)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other._ticketImages, _ticketImages)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.event, event) || other.event == event));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeCode,seatGradeName,seatGradeNameEn,areaId,area,locationId,locationName,row,price,originalPrice,totalPrice,isConsecutive,tradeMethodId,tradeMethodName,const DeepCollectionEquality().hash(_features),hasTicket,description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(_ticketImages),isFavorited,seller,event]);

@override
String toString() {
  return 'TicketingTicketRespDto(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeCode: $seatGradeCode, seatGradeName: $seatGradeName, seatGradeNameEn: $seatGradeNameEn, areaId: $areaId, area: $area, locationId: $locationId, locationName: $locationName, row: $row, price: $price, originalPrice: $originalPrice, totalPrice: $totalPrice, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, features: $features, hasTicket: $hasTicket, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, isFavorited: $isFavorited, seller: $seller, event: $event)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketRespDtoCopyWith<$Res> implements $TicketingTicketRespDtoCopyWith<$Res> {
  factory _$TicketingTicketRespDtoCopyWith(_TicketingTicketRespDto value, $Res Function(_TicketingTicketRespDto) _then) = __$TicketingTicketRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeCode, String? seatGradeName, String? seatGradeNameEn, int? areaId, String? area, int? locationId, String? locationName, String? row, int price, int originalPrice, int? totalPrice, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, List<TicketFeatureDto> features, bool? hasTicket, String? description, String createdAt, int quantity, int remainingQuantity, bool isSingleTicket, List<String> ticketImages, bool? isFavorited, TicketingSellerRespDto seller, TicketingEventRespDto? event
});


@override $TicketingSellerRespDtoCopyWith<$Res> get seller;@override $TicketingEventRespDtoCopyWith<$Res>? get event;

}
/// @nodoc
class __$TicketingTicketRespDtoCopyWithImpl<$Res>
    implements _$TicketingTicketRespDtoCopyWith<$Res> {
  __$TicketingTicketRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingTicketRespDto _self;
  final $Res Function(_TicketingTicketRespDto) _then;

/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeCode = freezed,Object? seatGradeName = freezed,Object? seatGradeNameEn = freezed,Object? areaId = freezed,Object? area = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? totalPrice = freezed,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? features = null,Object? hasTicket = freezed,Object? description = freezed,Object? createdAt = null,Object? quantity = null,Object? remainingQuantity = null,Object? isSingleTicket = null,Object? ticketImages = null,Object? isFavorited = freezed,Object? seller = null,Object? event = freezed,}) {
  return _then(_TicketingTicketRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatGradeId: freezed == seatGradeId ? _self.seatGradeId : seatGradeId // ignore: cast_nullable_to_non_nullable
as int?,seatGradeCode: freezed == seatGradeCode ? _self.seatGradeCode : seatGradeCode // ignore: cast_nullable_to_non_nullable
as String?,seatGradeName: freezed == seatGradeName ? _self.seatGradeName : seatGradeName // ignore: cast_nullable_to_non_nullable
as String?,seatGradeNameEn: freezed == seatGradeNameEn ? _self.seatGradeNameEn : seatGradeNameEn // ignore: cast_nullable_to_non_nullable
as String?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,row: freezed == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<TicketFeatureDto>,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self._ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerRespDto,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TicketingEventRespDto?,
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
}/// Create a copy of TicketingTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingEventRespDtoCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $TicketingEventRespDtoCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}


/// @nodoc
mixin _$TicketingSellerRespDto {

 int get userId; String? get nickname; String? get profileImageUrl; double? get mannerTemperature; double? get averageRating; int get reviewCount; int get totalTradeCount; double? get responseRate; bool get isSecurePayment;
/// Create a copy of TicketingSellerRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerRespDtoCopyWith<TicketingSellerRespDto> get copyWith => _$TicketingSellerRespDtoCopyWithImpl<TicketingSellerRespDto>(this as TicketingSellerRespDto, _$identity);

  /// Serializes this TicketingSellerRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,averageRating,reviewCount,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerRespDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, averageRating: $averageRating, reviewCount: $reviewCount, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerRespDtoCopyWith<$Res>  {
  factory $TicketingSellerRespDtoCopyWith(TicketingSellerRespDto value, $Res Function(TicketingSellerRespDto) _then) = _$TicketingSellerRespDtoCopyWithImpl;
@useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, double? averageRating, int reviewCount, int totalTradeCount, double? responseRate, bool isSecurePayment
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,Object? mannerTemperature = freezed,Object? averageRating = freezed,Object? reviewCount = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as double?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  double? averageRating,  int reviewCount,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.averageRating,_that.reviewCount,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  double? averageRating,  int reviewCount,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.averageRating,_that.reviewCount,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String? nickname,  String? profileImageUrl,  double? mannerTemperature,  double? averageRating,  int reviewCount,  int totalTradeCount,  double? responseRate,  bool isSecurePayment)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerRespDto() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.averageRating,_that.reviewCount,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingSellerRespDto implements TicketingSellerRespDto {
  const _TicketingSellerRespDto({required this.userId, this.nickname, this.profileImageUrl, this.mannerTemperature, this.averageRating, this.reviewCount = 0, this.totalTradeCount = 0, this.responseRate, this.isSecurePayment = false});
  factory _TicketingSellerRespDto.fromJson(Map<String, dynamic> json) => _$TicketingSellerRespDtoFromJson(json);

@override final  int userId;
@override final  String? nickname;
@override final  String? profileImageUrl;
@override final  double? mannerTemperature;
@override final  double? averageRating;
@override@JsonKey() final  int reviewCount;
@override@JsonKey() final  int totalTradeCount;
@override final  double? responseRate;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerRespDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,averageRating,reviewCount,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerRespDto(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, averageRating: $averageRating, reviewCount: $reviewCount, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerRespDtoCopyWith<$Res> implements $TicketingSellerRespDtoCopyWith<$Res> {
  factory _$TicketingSellerRespDtoCopyWith(_TicketingSellerRespDto value, $Res Function(_TicketingSellerRespDto) _then) = __$TicketingSellerRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, double? averageRating, int reviewCount, int totalTradeCount, double? responseRate, bool isSecurePayment
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,Object? mannerTemperature = freezed,Object? averageRating = freezed,Object? reviewCount = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_TicketingSellerRespDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,mannerTemperature: freezed == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,totalTradeCount: null == totalTradeCount ? _self.totalTradeCount : totalTradeCount // ignore: cast_nullable_to_non_nullable
as int,responseRate: freezed == responseRate ? _self.responseRate : responseRate // ignore: cast_nullable_to_non_nullable
as double?,isSecurePayment: null == isSecurePayment ? _self.isSecurePayment : isSecurePayment // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$TicketingEventRespDto {

 int get eventId; String get eventTitle; String? get posterImageUrl; String? get startAt; String? get endAt; String? get venueName;
/// Create a copy of TicketingEventRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingEventRespDtoCopyWith<TicketingEventRespDto> get copyWith => _$TicketingEventRespDtoCopyWithImpl<TicketingEventRespDto>(this as TicketingEventRespDto, _$identity);

  /// Serializes this TicketingEventRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingEventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,startAt,endAt,venueName);

@override
String toString() {
  return 'TicketingEventRespDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class $TicketingEventRespDtoCopyWith<$Res>  {
  factory $TicketingEventRespDtoCopyWith(TicketingEventRespDto value, $Res Function(TicketingEventRespDto) _then) = _$TicketingEventRespDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? startAt, String? endAt, String? venueName
});




}
/// @nodoc
class _$TicketingEventRespDtoCopyWithImpl<$Res>
    implements $TicketingEventRespDtoCopyWith<$Res> {
  _$TicketingEventRespDtoCopyWithImpl(this._self, this._then);

  final TicketingEventRespDto _self;
  final $Res Function(TicketingEventRespDto) _then;

/// Create a copy of TicketingEventRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingEventRespDto].
extension TicketingEventRespDtoPatterns on TicketingEventRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingEventRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingEventRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingEventRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketingEventRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingEventRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingEventRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? startAt,  String? endAt,  String? venueName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingEventRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.startAt,_that.endAt,_that.venueName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? startAt,  String? endAt,  String? venueName)  $default,) {final _that = this;
switch (_that) {
case _TicketingEventRespDto():
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.startAt,_that.endAt,_that.venueName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? posterImageUrl,  String? startAt,  String? endAt,  String? venueName)?  $default,) {final _that = this;
switch (_that) {
case _TicketingEventRespDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.startAt,_that.endAt,_that.venueName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketingEventRespDto implements TicketingEventRespDto {
  const _TicketingEventRespDto({required this.eventId, required this.eventTitle, this.posterImageUrl, this.startAt, this.endAt, this.venueName});
  factory _TicketingEventRespDto.fromJson(Map<String, dynamic> json) => _$TicketingEventRespDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String? posterImageUrl;
@override final  String? startAt;
@override final  String? endAt;
@override final  String? venueName;

/// Create a copy of TicketingEventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingEventRespDtoCopyWith<_TicketingEventRespDto> get copyWith => __$TicketingEventRespDtoCopyWithImpl<_TicketingEventRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketingEventRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingEventRespDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,startAt,endAt,venueName);

@override
String toString() {
  return 'TicketingEventRespDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class _$TicketingEventRespDtoCopyWith<$Res> implements $TicketingEventRespDtoCopyWith<$Res> {
  factory _$TicketingEventRespDtoCopyWith(_TicketingEventRespDto value, $Res Function(_TicketingEventRespDto) _then) = __$TicketingEventRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, String? startAt, String? endAt, String? venueName
});




}
/// @nodoc
class __$TicketingEventRespDtoCopyWithImpl<$Res>
    implements _$TicketingEventRespDtoCopyWith<$Res> {
  __$TicketingEventRespDtoCopyWithImpl(this._self, this._then);

  final _TicketingEventRespDto _self;
  final $Res Function(_TicketingEventRespDto) _then;

/// Create a copy of TicketingEventRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,}) {
  return _then(_TicketingEventRespDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as String?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as String?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
