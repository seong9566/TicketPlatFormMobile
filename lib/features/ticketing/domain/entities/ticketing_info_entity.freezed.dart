// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingInfoEntity {

 int get eventId; String get eventTitle; String? get eventPosterImageUrl; DateTime? get startAt; DateTime? get endAt; String? get venueName; String? get venueAddress; int? get artistId; String? get artistName; bool get isSoldOutImminent; List<TicketingSeatTypeFilterEntity> get seatTypeFilters; List<TicketingTicketEntity> get tickets;
/// Create a copy of TicketingInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingInfoEntityCopyWith<TicketingInfoEntity> get copyWith => _$TicketingInfoEntityCopyWithImpl<TicketingInfoEntity>(this as TicketingInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingInfoEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueAddress, venueAddress) || other.venueAddress == venueAddress)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.isSoldOutImminent, isSoldOutImminent) || other.isSoldOutImminent == isSoldOutImminent)&&const DeepCollectionEquality().equals(other.seatTypeFilters, seatTypeFilters)&&const DeepCollectionEquality().equals(other.tickets, tickets));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,venueAddress,artistId,artistName,isSoldOutImminent,const DeepCollectionEquality().hash(seatTypeFilters),const DeepCollectionEquality().hash(tickets));

@override
String toString() {
  return 'TicketingInfoEntity(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, venueAddress: $venueAddress, artistId: $artistId, artistName: $artistName, isSoldOutImminent: $isSoldOutImminent, seatTypeFilters: $seatTypeFilters, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class $TicketingInfoEntityCopyWith<$Res>  {
  factory $TicketingInfoEntityCopyWith(TicketingInfoEntity value, $Res Function(TicketingInfoEntity) _then) = _$TicketingInfoEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? eventPosterImageUrl, DateTime? startAt, DateTime? endAt, String? venueName, String? venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterEntity> seatTypeFilters, List<TicketingTicketEntity> tickets
});




}
/// @nodoc
class _$TicketingInfoEntityCopyWithImpl<$Res>
    implements $TicketingInfoEntityCopyWith<$Res> {
  _$TicketingInfoEntityCopyWithImpl(this._self, this._then);

  final TicketingInfoEntity _self;
  final $Res Function(TicketingInfoEntity) _then;

/// Create a copy of TicketingInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,Object? venueAddress = freezed,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueAddress: freezed == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String?,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,isSoldOutImminent: null == isSoldOutImminent ? _self.isSoldOutImminent : isSoldOutImminent // ignore: cast_nullable_to_non_nullable
as bool,seatTypeFilters: null == seatTypeFilters ? _self.seatTypeFilters : seatTypeFilters // ignore: cast_nullable_to_non_nullable
as List<TicketingSeatTypeFilterEntity>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingInfoEntity].
extension TicketingInfoEntityPatterns on TicketingInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketingInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingInfoEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)  $default,) {final _that = this;
switch (_that) {
case _TicketingInfoEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? eventPosterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName,  String? venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)?  $default,) {final _that = this;
switch (_that) {
case _TicketingInfoEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.venueAddress,_that.artistId,_that.artistName,_that.isSoldOutImminent,_that.seatTypeFilters,_that.tickets);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingInfoEntity implements TicketingInfoEntity {
  const _TicketingInfoEntity({required this.eventId, required this.eventTitle, this.eventPosterImageUrl, this.startAt, this.endAt, this.venueName, this.venueAddress, this.artistId, this.artistName, required this.isSoldOutImminent, required final  List<TicketingSeatTypeFilterEntity> seatTypeFilters, required final  List<TicketingTicketEntity> tickets}): _seatTypeFilters = seatTypeFilters,_tickets = tickets;
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String? eventPosterImageUrl;
@override final  DateTime? startAt;
@override final  DateTime? endAt;
@override final  String? venueName;
@override final  String? venueAddress;
@override final  int? artistId;
@override final  String? artistName;
@override final  bool isSoldOutImminent;
 final  List<TicketingSeatTypeFilterEntity> _seatTypeFilters;
@override List<TicketingSeatTypeFilterEntity> get seatTypeFilters {
  if (_seatTypeFilters is EqualUnmodifiableListView) return _seatTypeFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatTypeFilters);
}

 final  List<TicketingTicketEntity> _tickets;
@override List<TicketingTicketEntity> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}


/// Create a copy of TicketingInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingInfoEntityCopyWith<_TicketingInfoEntity> get copyWith => __$TicketingInfoEntityCopyWithImpl<_TicketingInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingInfoEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventPosterImageUrl, eventPosterImageUrl) || other.eventPosterImageUrl == eventPosterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.venueAddress, venueAddress) || other.venueAddress == venueAddress)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.artistName, artistName) || other.artistName == artistName)&&(identical(other.isSoldOutImminent, isSoldOutImminent) || other.isSoldOutImminent == isSoldOutImminent)&&const DeepCollectionEquality().equals(other._seatTypeFilters, _seatTypeFilters)&&const DeepCollectionEquality().equals(other._tickets, _tickets));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventPosterImageUrl,startAt,endAt,venueName,venueAddress,artistId,artistName,isSoldOutImminent,const DeepCollectionEquality().hash(_seatTypeFilters),const DeepCollectionEquality().hash(_tickets));

@override
String toString() {
  return 'TicketingInfoEntity(eventId: $eventId, eventTitle: $eventTitle, eventPosterImageUrl: $eventPosterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName, venueAddress: $venueAddress, artistId: $artistId, artistName: $artistName, isSoldOutImminent: $isSoldOutImminent, seatTypeFilters: $seatTypeFilters, tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class _$TicketingInfoEntityCopyWith<$Res> implements $TicketingInfoEntityCopyWith<$Res> {
  factory _$TicketingInfoEntityCopyWith(_TicketingInfoEntity value, $Res Function(_TicketingInfoEntity) _then) = __$TicketingInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? eventPosterImageUrl, DateTime? startAt, DateTime? endAt, String? venueName, String? venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterEntity> seatTypeFilters, List<TicketingTicketEntity> tickets
});




}
/// @nodoc
class __$TicketingInfoEntityCopyWithImpl<$Res>
    implements _$TicketingInfoEntityCopyWith<$Res> {
  __$TicketingInfoEntityCopyWithImpl(this._self, this._then);

  final _TicketingInfoEntity _self;
  final $Res Function(_TicketingInfoEntity) _then;

/// Create a copy of TicketingInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,Object? venueAddress = freezed,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_TicketingInfoEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: freezed == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,venueAddress: freezed == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String?,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as int?,artistName: freezed == artistName ? _self.artistName : artistName // ignore: cast_nullable_to_non_nullable
as String?,isSoldOutImminent: null == isSoldOutImminent ? _self.isSoldOutImminent : isSoldOutImminent // ignore: cast_nullable_to_non_nullable
as bool,seatTypeFilters: null == seatTypeFilters ? _self._seatTypeFilters : seatTypeFilters // ignore: cast_nullable_to_non_nullable
as List<TicketingSeatTypeFilterEntity>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketEntity>,
  ));
}


}

/// @nodoc
mixin _$TicketingSeatTypeFilterEntity {

 String get seatTypeName; int get ticketCount;
/// Create a copy of TicketingSeatTypeFilterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSeatTypeFilterEntityCopyWith<TicketingSeatTypeFilterEntity> get copyWith => _$TicketingSeatTypeFilterEntityCopyWithImpl<TicketingSeatTypeFilterEntity>(this as TicketingSeatTypeFilterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSeatTypeFilterEntity&&(identical(other.seatTypeName, seatTypeName) || other.seatTypeName == seatTypeName)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}


@override
int get hashCode => Object.hash(runtimeType,seatTypeName,ticketCount);

@override
String toString() {
  return 'TicketingSeatTypeFilterEntity(seatTypeName: $seatTypeName, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $TicketingSeatTypeFilterEntityCopyWith<$Res>  {
  factory $TicketingSeatTypeFilterEntityCopyWith(TicketingSeatTypeFilterEntity value, $Res Function(TicketingSeatTypeFilterEntity) _then) = _$TicketingSeatTypeFilterEntityCopyWithImpl;
@useResult
$Res call({
 String seatTypeName, int ticketCount
});




}
/// @nodoc
class _$TicketingSeatTypeFilterEntityCopyWithImpl<$Res>
    implements $TicketingSeatTypeFilterEntityCopyWith<$Res> {
  _$TicketingSeatTypeFilterEntityCopyWithImpl(this._self, this._then);

  final TicketingSeatTypeFilterEntity _self;
  final $Res Function(TicketingSeatTypeFilterEntity) _then;

/// Create a copy of TicketingSeatTypeFilterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seatTypeName = null,Object? ticketCount = null,}) {
  return _then(_self.copyWith(
seatTypeName: null == seatTypeName ? _self.seatTypeName : seatTypeName // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingSeatTypeFilterEntity].
extension TicketingSeatTypeFilterEntityPatterns on TicketingSeatTypeFilterEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingSeatTypeFilterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingSeatTypeFilterEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingSeatTypeFilterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingSeatTypeFilterEntity() when $default != null:
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
case _TicketingSeatTypeFilterEntity() when $default != null:
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
case _TicketingSeatTypeFilterEntity():
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
case _TicketingSeatTypeFilterEntity() when $default != null:
return $default(_that.seatTypeName,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingSeatTypeFilterEntity implements TicketingSeatTypeFilterEntity {
  const _TicketingSeatTypeFilterEntity({required this.seatTypeName, required this.ticketCount});
  

@override final  String seatTypeName;
@override final  int ticketCount;

/// Create a copy of TicketingSeatTypeFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSeatTypeFilterEntityCopyWith<_TicketingSeatTypeFilterEntity> get copyWith => __$TicketingSeatTypeFilterEntityCopyWithImpl<_TicketingSeatTypeFilterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSeatTypeFilterEntity&&(identical(other.seatTypeName, seatTypeName) || other.seatTypeName == seatTypeName)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}


@override
int get hashCode => Object.hash(runtimeType,seatTypeName,ticketCount);

@override
String toString() {
  return 'TicketingSeatTypeFilterEntity(seatTypeName: $seatTypeName, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$TicketingSeatTypeFilterEntityCopyWith<$Res> implements $TicketingSeatTypeFilterEntityCopyWith<$Res> {
  factory _$TicketingSeatTypeFilterEntityCopyWith(_TicketingSeatTypeFilterEntity value, $Res Function(_TicketingSeatTypeFilterEntity) _then) = __$TicketingSeatTypeFilterEntityCopyWithImpl;
@override @useResult
$Res call({
 String seatTypeName, int ticketCount
});




}
/// @nodoc
class __$TicketingSeatTypeFilterEntityCopyWithImpl<$Res>
    implements _$TicketingSeatTypeFilterEntityCopyWith<$Res> {
  __$TicketingSeatTypeFilterEntityCopyWithImpl(this._self, this._then);

  final _TicketingSeatTypeFilterEntity _self;
  final $Res Function(_TicketingSeatTypeFilterEntity) _then;

/// Create a copy of TicketingSeatTypeFilterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seatTypeName = null,Object? ticketCount = null,}) {
  return _then(_TicketingSeatTypeFilterEntity(
seatTypeName: null == seatTypeName ? _self.seatTypeName : seatTypeName // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TicketFeatureEntity {

 int get id; String get code; String get name;
/// Create a copy of TicketFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketFeatureEntityCopyWith<TicketFeatureEntity> get copyWith => _$TicketFeatureEntityCopyWithImpl<TicketFeatureEntity>(this as TicketFeatureEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketFeatureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,name);

@override
String toString() {
  return 'TicketFeatureEntity(id: $id, code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class $TicketFeatureEntityCopyWith<$Res>  {
  factory $TicketFeatureEntityCopyWith(TicketFeatureEntity value, $Res Function(TicketFeatureEntity) _then) = _$TicketFeatureEntityCopyWithImpl;
@useResult
$Res call({
 int id, String code, String name
});




}
/// @nodoc
class _$TicketFeatureEntityCopyWithImpl<$Res>
    implements $TicketFeatureEntityCopyWith<$Res> {
  _$TicketFeatureEntityCopyWithImpl(this._self, this._then);

  final TicketFeatureEntity _self;
  final $Res Function(TicketFeatureEntity) _then;

/// Create a copy of TicketFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketFeatureEntity].
extension TicketFeatureEntityPatterns on TicketFeatureEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketFeatureEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketFeatureEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketFeatureEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketFeatureEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketFeatureEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketFeatureEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketFeatureEntity() when $default != null:
return $default(_that.id,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String name)  $default,) {final _that = this;
switch (_that) {
case _TicketFeatureEntity():
return $default(_that.id,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TicketFeatureEntity() when $default != null:
return $default(_that.id,_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _TicketFeatureEntity implements TicketFeatureEntity {
  const _TicketFeatureEntity({required this.id, required this.code, required this.name});
  

@override final  int id;
@override final  String code;
@override final  String name;

/// Create a copy of TicketFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketFeatureEntityCopyWith<_TicketFeatureEntity> get copyWith => __$TicketFeatureEntityCopyWithImpl<_TicketFeatureEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketFeatureEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,name);

@override
String toString() {
  return 'TicketFeatureEntity(id: $id, code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TicketFeatureEntityCopyWith<$Res> implements $TicketFeatureEntityCopyWith<$Res> {
  factory _$TicketFeatureEntityCopyWith(_TicketFeatureEntity value, $Res Function(_TicketFeatureEntity) _then) = __$TicketFeatureEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String name
});




}
/// @nodoc
class __$TicketFeatureEntityCopyWithImpl<$Res>
    implements _$TicketFeatureEntityCopyWith<$Res> {
  __$TicketFeatureEntityCopyWithImpl(this._self, this._then);

  final _TicketFeatureEntity _self;
  final $Res Function(_TicketFeatureEntity) _then;

/// Create a copy of TicketFeatureEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? name = null,}) {
  return _then(_TicketFeatureEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TicketingTicketEntity {

 int get ticketId; int? get seatGradeId; String? get seatGradeCode; String? get seatGradeName; String? get seatGradeNameEn; int? get areaId; String? get area; int? get locationId; String? get locationName; String? get row; int get price; int get originalPrice; int get totalPrice; bool? get isConsecutive; int? get tradeMethodId; String? get tradeMethodName; List<TicketFeatureEntity>? get features; bool? get hasTicket; String? get description; DateTime get createdAt; int get quantity; int get remainingQuantity; bool get isSingleTicket; List<String> get ticketImages; bool? get isFavorited; TicketingSellerEntity get seller; TicketingEventEntity? get event;
/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketEntityCopyWith<TicketingTicketEntity> get copyWith => _$TicketingTicketEntityCopyWithImpl<TicketingTicketEntity>(this as TicketingTicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeCode, seatGradeCode) || other.seatGradeCode == seatGradeCode)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.seatGradeNameEn, seatGradeNameEn) || other.seatGradeNameEn == seatGradeNameEn)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.area, area) || other.area == area)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other.ticketImages, ticketImages)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeCode,seatGradeName,seatGradeNameEn,areaId,area,locationId,locationName,row,price,originalPrice,totalPrice,isConsecutive,tradeMethodId,tradeMethodName,const DeepCollectionEquality().hash(features),hasTicket,description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(ticketImages),isFavorited,seller,event]);

@override
String toString() {
  return 'TicketingTicketEntity(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeCode: $seatGradeCode, seatGradeName: $seatGradeName, seatGradeNameEn: $seatGradeNameEn, areaId: $areaId, area: $area, locationId: $locationId, locationName: $locationName, row: $row, price: $price, originalPrice: $originalPrice, totalPrice: $totalPrice, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, features: $features, hasTicket: $hasTicket, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, isFavorited: $isFavorited, seller: $seller, event: $event)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketEntityCopyWith<$Res>  {
  factory $TicketingTicketEntityCopyWith(TicketingTicketEntity value, $Res Function(TicketingTicketEntity) _then) = _$TicketingTicketEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeCode, String? seatGradeName, String? seatGradeNameEn, int? areaId, String? area, int? locationId, String? locationName, String? row, int price, int originalPrice, int totalPrice, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, List<TicketFeatureEntity>? features, bool? hasTicket, String? description, DateTime createdAt, int quantity, int remainingQuantity, bool isSingleTicket, List<String> ticketImages, bool? isFavorited, TicketingSellerEntity seller, TicketingEventEntity? event
});


$TicketingSellerEntityCopyWith<$Res> get seller;$TicketingEventEntityCopyWith<$Res>? get event;

}
/// @nodoc
class _$TicketingTicketEntityCopyWithImpl<$Res>
    implements $TicketingTicketEntityCopyWith<$Res> {
  _$TicketingTicketEntityCopyWithImpl(this._self, this._then);

  final TicketingTicketEntity _self;
  final $Res Function(TicketingTicketEntity) _then;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeCode = freezed,Object? seatGradeName = freezed,Object? seatGradeNameEn = freezed,Object? areaId = freezed,Object? area = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? totalPrice = null,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? features = freezed,Object? hasTicket = freezed,Object? description = freezed,Object? createdAt = null,Object? quantity = null,Object? remainingQuantity = null,Object? isSingleTicket = null,Object? ticketImages = null,Object? isFavorited = freezed,Object? seller = null,Object? event = freezed,}) {
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
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,features: freezed == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<TicketFeatureEntity>?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self.ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TicketingEventEntity?,
  ));
}
/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<$Res> get seller {
  
  return $TicketingSellerEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingEventEntityCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $TicketingEventEntityCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketingTicketEntity].
extension TicketingTicketEntityPatterns on TicketingTicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingTicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingTicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingTicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureEntity>? features,  bool? hasTicket,  String? description,  DateTime createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerEntity seller,  TicketingEventEntity? event)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureEntity>? features,  bool? hasTicket,  String? description,  DateTime createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerEntity seller,  TicketingEventEntity? event)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  int? seatGradeId,  String? seatGradeCode,  String? seatGradeName,  String? seatGradeNameEn,  int? areaId,  String? area,  int? locationId,  String? locationName,  String? row,  int price,  int originalPrice,  int totalPrice,  bool? isConsecutive,  int? tradeMethodId,  String? tradeMethodName,  List<TicketFeatureEntity>? features,  bool? hasTicket,  String? description,  DateTime createdAt,  int quantity,  int remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  bool? isFavorited,  TicketingSellerEntity seller,  TicketingEventEntity? event)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
return $default(_that.ticketId,_that.seatGradeId,_that.seatGradeCode,_that.seatGradeName,_that.seatGradeNameEn,_that.areaId,_that.area,_that.locationId,_that.locationName,_that.row,_that.price,_that.originalPrice,_that.totalPrice,_that.isConsecutive,_that.tradeMethodId,_that.tradeMethodName,_that.features,_that.hasTicket,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.isFavorited,_that.seller,_that.event);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketEntity implements TicketingTicketEntity {
  const _TicketingTicketEntity({required this.ticketId, this.seatGradeId, this.seatGradeCode, this.seatGradeName, this.seatGradeNameEn, this.areaId, this.area, this.locationId, this.locationName, this.row, required this.price, required this.originalPrice, required this.totalPrice, this.isConsecutive, this.tradeMethodId, this.tradeMethodName, final  List<TicketFeatureEntity>? features, this.hasTicket, this.description, required this.createdAt, required this.quantity, required this.remainingQuantity, required this.isSingleTicket, required final  List<String> ticketImages, this.isFavorited, required this.seller, this.event}): _features = features,_ticketImages = ticketImages;
  

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
@override final  int price;
@override final  int originalPrice;
@override final  int totalPrice;
@override final  bool? isConsecutive;
@override final  int? tradeMethodId;
@override final  String? tradeMethodName;
 final  List<TicketFeatureEntity>? _features;
@override List<TicketFeatureEntity>? get features {
  final value = _features;
  if (value == null) return null;
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? hasTicket;
@override final  String? description;
@override final  DateTime createdAt;
@override final  int quantity;
@override final  int remainingQuantity;
@override final  bool isSingleTicket;
 final  List<String> _ticketImages;
@override List<String> get ticketImages {
  if (_ticketImages is EqualUnmodifiableListView) return _ticketImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketImages);
}

@override final  bool? isFavorited;
@override final  TicketingSellerEntity seller;
@override final  TicketingEventEntity? event;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketEntityCopyWith<_TicketingTicketEntity> get copyWith => __$TicketingTicketEntityCopyWithImpl<_TicketingTicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatGradeId, seatGradeId) || other.seatGradeId == seatGradeId)&&(identical(other.seatGradeCode, seatGradeCode) || other.seatGradeCode == seatGradeCode)&&(identical(other.seatGradeName, seatGradeName) || other.seatGradeName == seatGradeName)&&(identical(other.seatGradeNameEn, seatGradeNameEn) || other.seatGradeNameEn == seatGradeNameEn)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.area, area) || other.area == area)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.row, row) || other.row == row)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.tradeMethodId, tradeMethodId) || other.tradeMethodId == tradeMethodId)&&(identical(other.tradeMethodName, tradeMethodName) || other.tradeMethodName == tradeMethodName)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.hasTicket, hasTicket) || other.hasTicket == hasTicket)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other._ticketImages, _ticketImages)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hashAll([runtimeType,ticketId,seatGradeId,seatGradeCode,seatGradeName,seatGradeNameEn,areaId,area,locationId,locationName,row,price,originalPrice,totalPrice,isConsecutive,tradeMethodId,tradeMethodName,const DeepCollectionEquality().hash(_features),hasTicket,description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(_ticketImages),isFavorited,seller,event]);

@override
String toString() {
  return 'TicketingTicketEntity(ticketId: $ticketId, seatGradeId: $seatGradeId, seatGradeCode: $seatGradeCode, seatGradeName: $seatGradeName, seatGradeNameEn: $seatGradeNameEn, areaId: $areaId, area: $area, locationId: $locationId, locationName: $locationName, row: $row, price: $price, originalPrice: $originalPrice, totalPrice: $totalPrice, isConsecutive: $isConsecutive, tradeMethodId: $tradeMethodId, tradeMethodName: $tradeMethodName, features: $features, hasTicket: $hasTicket, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, isFavorited: $isFavorited, seller: $seller, event: $event)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketEntityCopyWith<$Res> implements $TicketingTicketEntityCopyWith<$Res> {
  factory _$TicketingTicketEntityCopyWith(_TicketingTicketEntity value, $Res Function(_TicketingTicketEntity) _then) = __$TicketingTicketEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, int? seatGradeId, String? seatGradeCode, String? seatGradeName, String? seatGradeNameEn, int? areaId, String? area, int? locationId, String? locationName, String? row, int price, int originalPrice, int totalPrice, bool? isConsecutive, int? tradeMethodId, String? tradeMethodName, List<TicketFeatureEntity>? features, bool? hasTicket, String? description, DateTime createdAt, int quantity, int remainingQuantity, bool isSingleTicket, List<String> ticketImages, bool? isFavorited, TicketingSellerEntity seller, TicketingEventEntity? event
});


@override $TicketingSellerEntityCopyWith<$Res> get seller;@override $TicketingEventEntityCopyWith<$Res>? get event;

}
/// @nodoc
class __$TicketingTicketEntityCopyWithImpl<$Res>
    implements _$TicketingTicketEntityCopyWith<$Res> {
  __$TicketingTicketEntityCopyWithImpl(this._self, this._then);

  final _TicketingTicketEntity _self;
  final $Res Function(_TicketingTicketEntity) _then;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? seatGradeId = freezed,Object? seatGradeCode = freezed,Object? seatGradeName = freezed,Object? seatGradeNameEn = freezed,Object? areaId = freezed,Object? area = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? row = freezed,Object? price = null,Object? originalPrice = null,Object? totalPrice = null,Object? isConsecutive = freezed,Object? tradeMethodId = freezed,Object? tradeMethodName = freezed,Object? features = freezed,Object? hasTicket = freezed,Object? description = freezed,Object? createdAt = null,Object? quantity = null,Object? remainingQuantity = null,Object? isSingleTicket = null,Object? ticketImages = null,Object? isFavorited = freezed,Object? seller = null,Object? event = freezed,}) {
  return _then(_TicketingTicketEntity(
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
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: freezed == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool?,tradeMethodId: freezed == tradeMethodId ? _self.tradeMethodId : tradeMethodId // ignore: cast_nullable_to_non_nullable
as int?,tradeMethodName: freezed == tradeMethodName ? _self.tradeMethodName : tradeMethodName // ignore: cast_nullable_to_non_nullable
as String?,features: freezed == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<TicketFeatureEntity>?,hasTicket: freezed == hasTicket ? _self.hasTicket : hasTicket // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self._ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorited: freezed == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool?,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as TicketingEventEntity?,
  ));
}

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<$Res> get seller {
  
  return $TicketingSellerEntityCopyWith<$Res>(_self.seller, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingEventEntityCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $TicketingEventEntityCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}

/// @nodoc
mixin _$TicketingEventEntity {

 int get eventId; String get eventTitle; String? get posterImageUrl; DateTime? get startAt; DateTime? get endAt; String? get venueName;
/// Create a copy of TicketingEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingEventEntityCopyWith<TicketingEventEntity> get copyWith => _$TicketingEventEntityCopyWithImpl<TicketingEventEntity>(this as TicketingEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,startAt,endAt,venueName);

@override
String toString() {
  return 'TicketingEventEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class $TicketingEventEntityCopyWith<$Res>  {
  factory $TicketingEventEntityCopyWith(TicketingEventEntity value, $Res Function(TicketingEventEntity) _then) = _$TicketingEventEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, DateTime? startAt, DateTime? endAt, String? venueName
});




}
/// @nodoc
class _$TicketingEventEntityCopyWithImpl<$Res>
    implements $TicketingEventEntityCopyWith<$Res> {
  _$TicketingEventEntityCopyWithImpl(this._self, this._then);

  final TicketingEventEntity _self;
  final $Res Function(TicketingEventEntity) _then;

/// Create a copy of TicketingEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingEventEntity].
extension TicketingEventEntityPatterns on TicketingEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketingEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingEventEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? posterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName)  $default,) {final _that = this;
switch (_that) {
case _TicketingEventEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? posterImageUrl,  DateTime? startAt,  DateTime? endAt,  String? venueName)?  $default,) {final _that = this;
switch (_that) {
case _TicketingEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.startAt,_that.endAt,_that.venueName);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingEventEntity implements TicketingEventEntity {
  const _TicketingEventEntity({required this.eventId, required this.eventTitle, this.posterImageUrl, this.startAt, this.endAt, this.venueName});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String? posterImageUrl;
@override final  DateTime? startAt;
@override final  DateTime? endAt;
@override final  String? venueName;

/// Create a copy of TicketingEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingEventEntityCopyWith<_TicketingEventEntity> get copyWith => __$TicketingEventEntityCopyWithImpl<_TicketingEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt)&&(identical(other.venueName, venueName) || other.venueName == venueName));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,startAt,endAt,venueName);

@override
String toString() {
  return 'TicketingEventEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, startAt: $startAt, endAt: $endAt, venueName: $venueName)';
}


}

/// @nodoc
abstract mixin class _$TicketingEventEntityCopyWith<$Res> implements $TicketingEventEntityCopyWith<$Res> {
  factory _$TicketingEventEntityCopyWith(_TicketingEventEntity value, $Res Function(_TicketingEventEntity) _then) = __$TicketingEventEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? posterImageUrl, DateTime? startAt, DateTime? endAt, String? venueName
});




}
/// @nodoc
class __$TicketingEventEntityCopyWithImpl<$Res>
    implements _$TicketingEventEntityCopyWith<$Res> {
  __$TicketingEventEntityCopyWithImpl(this._self, this._then);

  final _TicketingEventEntity _self;
  final $Res Function(_TicketingEventEntity) _then;

/// Create a copy of TicketingEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = freezed,Object? startAt = freezed,Object? endAt = freezed,Object? venueName = freezed,}) {
  return _then(_TicketingEventEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,startAt: freezed == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endAt: freezed == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime?,venueName: freezed == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TicketingSellerEntity {

 int get userId; String? get nickname; String? get profileImageUrl; double? get mannerTemperature; double? get averageRating; int get reviewCount; int get totalTradeCount; double? get responseRate; bool get isSecurePayment;
/// Create a copy of TicketingSellerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<TicketingSellerEntity> get copyWith => _$TicketingSellerEntityCopyWithImpl<TicketingSellerEntity>(this as TicketingSellerEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,averageRating,reviewCount,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, averageRating: $averageRating, reviewCount: $reviewCount, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerEntityCopyWith<$Res>  {
  factory $TicketingSellerEntityCopyWith(TicketingSellerEntity value, $Res Function(TicketingSellerEntity) _then) = _$TicketingSellerEntityCopyWithImpl;
@useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, double? averageRating, int reviewCount, int totalTradeCount, double? responseRate, bool isSecurePayment
});




}
/// @nodoc
class _$TicketingSellerEntityCopyWithImpl<$Res>
    implements $TicketingSellerEntityCopyWith<$Res> {
  _$TicketingSellerEntityCopyWithImpl(this._self, this._then);

  final TicketingSellerEntity _self;
  final $Res Function(TicketingSellerEntity) _then;

/// Create a copy of TicketingSellerEntity
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


/// Adds pattern-matching-related methods to [TicketingSellerEntity].
extension TicketingSellerEntityPatterns on TicketingSellerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingSellerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingSellerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingSellerEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingSellerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingSellerEntity() when $default != null:
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
case _TicketingSellerEntity() when $default != null:
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
case _TicketingSellerEntity():
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
case _TicketingSellerEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature,_that.averageRating,_that.reviewCount,_that.totalTradeCount,_that.responseRate,_that.isSecurePayment);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingSellerEntity implements TicketingSellerEntity {
  const _TicketingSellerEntity({required this.userId, this.nickname, this.profileImageUrl, this.mannerTemperature, this.averageRating, required this.reviewCount, required this.totalTradeCount, this.responseRate, required this.isSecurePayment});
  

@override final  int userId;
@override final  String? nickname;
@override final  String? profileImageUrl;
@override final  double? mannerTemperature;
@override final  double? averageRating;
@override final  int reviewCount;
@override final  int totalTradeCount;
@override final  double? responseRate;
@override final  bool isSecurePayment;

/// Create a copy of TicketingSellerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSellerEntityCopyWith<_TicketingSellerEntity> get copyWith => __$TicketingSellerEntityCopyWithImpl<_TicketingSellerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.totalTradeCount, totalTradeCount) || other.totalTradeCount == totalTradeCount)&&(identical(other.responseRate, responseRate) || other.responseRate == responseRate)&&(identical(other.isSecurePayment, isSecurePayment) || other.isSecurePayment == isSecurePayment));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature,averageRating,reviewCount,totalTradeCount,responseRate,isSecurePayment);

@override
String toString() {
  return 'TicketingSellerEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature, averageRating: $averageRating, reviewCount: $reviewCount, totalTradeCount: $totalTradeCount, responseRate: $responseRate, isSecurePayment: $isSecurePayment)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerEntityCopyWith<$Res> implements $TicketingSellerEntityCopyWith<$Res> {
  factory _$TicketingSellerEntityCopyWith(_TicketingSellerEntity value, $Res Function(_TicketingSellerEntity) _then) = __$TicketingSellerEntityCopyWithImpl;
@override @useResult
$Res call({
 int userId, String? nickname, String? profileImageUrl, double? mannerTemperature, double? averageRating, int reviewCount, int totalTradeCount, double? responseRate, bool isSecurePayment
});




}
/// @nodoc
class __$TicketingSellerEntityCopyWithImpl<$Res>
    implements _$TicketingSellerEntityCopyWith<$Res> {
  __$TicketingSellerEntityCopyWithImpl(this._self, this._then);

  final _TicketingSellerEntity _self;
  final $Res Function(_TicketingSellerEntity) _then;

/// Create a copy of TicketingSellerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = freezed,Object? profileImageUrl = freezed,Object? mannerTemperature = freezed,Object? averageRating = freezed,Object? reviewCount = null,Object? totalTradeCount = null,Object? responseRate = freezed,Object? isSecurePayment = null,}) {
  return _then(_TicketingSellerEntity(
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

// dart format on
