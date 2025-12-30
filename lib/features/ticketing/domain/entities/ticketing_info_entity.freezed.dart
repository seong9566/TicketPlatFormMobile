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

 int get eventId; String get eventTitle; String get eventPosterImageUrl; DateTime get startAt; DateTime get endAt; String get venueName; String get venueAddress; int? get artistId; String? get artistName; bool get isSoldOutImminent; List<TicketingSeatTypeFilterEntity> get seatTypeFilters; List<TicketingTicketEntity> get tickets;
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
 int eventId, String eventTitle, String eventPosterImageUrl, DateTime startAt, DateTime endAt, String venueName, String venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterEntity> seatTypeFilters, List<TicketingTicketEntity> tickets
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
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? venueAddress = null,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,venueAddress: null == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  DateTime startAt,  DateTime endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  DateTime startAt,  DateTime endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String eventPosterImageUrl,  DateTime startAt,  DateTime endAt,  String venueName,  String venueAddress,  int? artistId,  String? artistName,  bool isSoldOutImminent,  List<TicketingSeatTypeFilterEntity> seatTypeFilters,  List<TicketingTicketEntity> tickets)?  $default,) {final _that = this;
switch (_that) {
case _TicketingInfoEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventPosterImageUrl,_that.startAt,_that.endAt,_that.venueName,_that.venueAddress,_that.artistId,_that.artistName,_that.isSoldOutImminent,_that.seatTypeFilters,_that.tickets);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingInfoEntity implements TicketingInfoEntity {
  const _TicketingInfoEntity({required this.eventId, required this.eventTitle, required this.eventPosterImageUrl, required this.startAt, required this.endAt, required this.venueName, required this.venueAddress, required this.artistId, required this.artistName, required this.isSoldOutImminent, required final  List<TicketingSeatTypeFilterEntity> seatTypeFilters, required final  List<TicketingTicketEntity> tickets}): _seatTypeFilters = seatTypeFilters,_tickets = tickets;
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String eventPosterImageUrl;
@override final  DateTime startAt;
@override final  DateTime endAt;
@override final  String venueName;
@override final  String venueAddress;
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
 int eventId, String eventTitle, String eventPosterImageUrl, DateTime startAt, DateTime endAt, String venueName, String venueAddress, int? artistId, String? artistName, bool isSoldOutImminent, List<TicketingSeatTypeFilterEntity> seatTypeFilters, List<TicketingTicketEntity> tickets
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
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventPosterImageUrl = null,Object? startAt = null,Object? endAt = null,Object? venueName = null,Object? venueAddress = null,Object? artistId = freezed,Object? artistName = freezed,Object? isSoldOutImminent = null,Object? seatTypeFilters = null,Object? tickets = null,}) {
  return _then(_TicketingInfoEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventPosterImageUrl: null == eventPosterImageUrl ? _self.eventPosterImageUrl : eventPosterImageUrl // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,venueAddress: null == venueAddress ? _self.venueAddress : venueAddress // ignore: cast_nullable_to_non_nullable
as String,artistId: freezed == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
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
mixin _$TicketingTicketEntity {

 int get ticketId; String get ticketTitle; String get seatInfo; String get seatType; int get price; int get originalPrice; List<String> get seatFeatures; String? get description; DateTime get createdAt; int? get quantity; int? get remainingQuantity; bool get isSingleTicket; List<String> get ticketImages; TicketingSellerEntity get seller;
/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketEntityCopyWith<TicketingTicketEntity> get copyWith => _$TicketingTicketEntityCopyWithImpl<TicketingTicketEntity>(this as TicketingTicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other.seatFeatures, seatFeatures)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other.ticketImages, ticketImages)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,const DeepCollectionEquality().hash(seatFeatures),description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(ticketImages),seller);

@override
String toString() {
  return 'TicketingTicketEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, seatFeatures: $seatFeatures, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketEntityCopyWith<$Res>  {
  factory $TicketingTicketEntityCopyWith(TicketingTicketEntity value, $Res Function(TicketingTicketEntity) _then) = _$TicketingTicketEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String ticketTitle, String seatInfo, String seatType, int price, int originalPrice, List<String> seatFeatures, String? description, DateTime createdAt, int? quantity, int? remainingQuantity, bool isSingleTicket, List<String> ticketImages, TicketingSellerEntity seller
});


$TicketingSellerEntityCopyWith<$Res> get seller;

}
/// @nodoc
class _$TicketingTicketEntityCopyWithImpl<$Res>
    implements $TicketingTicketEntityCopyWith<$Res> {
  _$TicketingTicketEntityCopyWithImpl(this._self, this._then);

  final TicketingTicketEntity _self;
  final $Res Function(TicketingTicketEntity) _then;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = null,Object? seatType = null,Object? price = null,Object? originalPrice = null,Object? seatFeatures = null,Object? description = freezed,Object? createdAt = null,Object? quantity = freezed,Object? remainingQuantity = freezed,Object? isSingleTicket = null,Object? ticketImages = null,Object? seller = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,seatType: null == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,seatFeatures: null == seatFeatures ? _self.seatFeatures : seatFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self.ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String seatInfo,  String seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  DateTime createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerEntity seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  String seatInfo,  String seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  DateTime createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerEntity seller)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketEntity():
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String ticketTitle,  String seatInfo,  String seatType,  int price,  int originalPrice,  List<String> seatFeatures,  String? description,  DateTime createdAt,  int? quantity,  int? remainingQuantity,  bool isSingleTicket,  List<String> ticketImages,  TicketingSellerEntity seller)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.seatInfo,_that.seatType,_that.price,_that.originalPrice,_that.seatFeatures,_that.description,_that.createdAt,_that.quantity,_that.remainingQuantity,_that.isSingleTicket,_that.ticketImages,_that.seller);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketEntity implements TicketingTicketEntity {
  const _TicketingTicketEntity({required this.ticketId, required this.ticketTitle, required this.seatInfo, required this.seatType, required this.price, required this.originalPrice, required final  List<String> seatFeatures, required this.description, required this.createdAt, required this.quantity, required this.remainingQuantity, required this.isSingleTicket, required final  List<String> ticketImages, required this.seller}): _seatFeatures = seatFeatures,_ticketImages = ticketImages;
  

@override final  int ticketId;
@override final  String ticketTitle;
@override final  String seatInfo;
@override final  String seatType;
@override final  int price;
@override final  int originalPrice;
 final  List<String> _seatFeatures;
@override List<String> get seatFeatures {
  if (_seatFeatures is EqualUnmodifiableListView) return _seatFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seatFeatures);
}

@override final  String? description;
@override final  DateTime createdAt;
@override final  int? quantity;
@override final  int? remainingQuantity;
@override final  bool isSingleTicket;
 final  List<String> _ticketImages;
@override List<String> get ticketImages {
  if (_ticketImages is EqualUnmodifiableListView) return _ticketImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketImages);
}

@override final  TicketingSellerEntity seller;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketEntityCopyWith<_TicketingTicketEntity> get copyWith => __$TicketingTicketEntityCopyWithImpl<_TicketingTicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.seatType, seatType) || other.seatType == seatType)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&const DeepCollectionEquality().equals(other._seatFeatures, _seatFeatures)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.isSingleTicket, isSingleTicket) || other.isSingleTicket == isSingleTicket)&&const DeepCollectionEquality().equals(other._ticketImages, _ticketImages)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,seatInfo,seatType,price,originalPrice,const DeepCollectionEquality().hash(_seatFeatures),description,createdAt,quantity,remainingQuantity,isSingleTicket,const DeepCollectionEquality().hash(_ticketImages),seller);

@override
String toString() {
  return 'TicketingTicketEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, seatInfo: $seatInfo, seatType: $seatType, price: $price, originalPrice: $originalPrice, seatFeatures: $seatFeatures, description: $description, createdAt: $createdAt, quantity: $quantity, remainingQuantity: $remainingQuantity, isSingleTicket: $isSingleTicket, ticketImages: $ticketImages, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketEntityCopyWith<$Res> implements $TicketingTicketEntityCopyWith<$Res> {
  factory _$TicketingTicketEntityCopyWith(_TicketingTicketEntity value, $Res Function(_TicketingTicketEntity) _then) = __$TicketingTicketEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String ticketTitle, String seatInfo, String seatType, int price, int originalPrice, List<String> seatFeatures, String? description, DateTime createdAt, int? quantity, int? remainingQuantity, bool isSingleTicket, List<String> ticketImages, TicketingSellerEntity seller
});


@override $TicketingSellerEntityCopyWith<$Res> get seller;

}
/// @nodoc
class __$TicketingTicketEntityCopyWithImpl<$Res>
    implements _$TicketingTicketEntityCopyWith<$Res> {
  __$TicketingTicketEntityCopyWithImpl(this._self, this._then);

  final _TicketingTicketEntity _self;
  final $Res Function(_TicketingTicketEntity) _then;

/// Create a copy of TicketingTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? seatInfo = null,Object? seatType = null,Object? price = null,Object? originalPrice = null,Object? seatFeatures = null,Object? description = freezed,Object? createdAt = null,Object? quantity = freezed,Object? remainingQuantity = freezed,Object? isSingleTicket = null,Object? ticketImages = null,Object? seller = null,}) {
  return _then(_TicketingTicketEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,seatType: null == seatType ? _self.seatType : seatType // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,seatFeatures: null == seatFeatures ? _self._seatFeatures : seatFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,remainingQuantity: freezed == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int?,isSingleTicket: null == isSingleTicket ? _self.isSingleTicket : isSingleTicket // ignore: cast_nullable_to_non_nullable
as bool,ticketImages: null == ticketImages ? _self._ticketImages : ticketImages // ignore: cast_nullable_to_non_nullable
as List<String>,seller: null == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as TicketingSellerEntity,
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
}
}

/// @nodoc
mixin _$TicketingSellerEntity {

 int get userId; String get nickname; String get profileImageUrl; double get mannerTemperature;
/// Create a copy of TicketingSellerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingSellerEntityCopyWith<TicketingSellerEntity> get copyWith => _$TicketingSellerEntityCopyWithImpl<TicketingSellerEntity>(this as TicketingSellerEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingSellerEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature);

@override
String toString() {
  return 'TicketingSellerEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature)';
}


}

/// @nodoc
abstract mixin class $TicketingSellerEntityCopyWith<$Res>  {
  factory $TicketingSellerEntityCopyWith(TicketingSellerEntity value, $Res Function(TicketingSellerEntity) _then) = _$TicketingSellerEntityCopyWithImpl;
@useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingSellerEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature)  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerEntity():
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String nickname,  String profileImageUrl,  double mannerTemperature)?  $default,) {final _that = this;
switch (_that) {
case _TicketingSellerEntity() when $default != null:
return $default(_that.userId,_that.nickname,_that.profileImageUrl,_that.mannerTemperature);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingSellerEntity implements TicketingSellerEntity {
  const _TicketingSellerEntity({required this.userId, required this.nickname, required this.profileImageUrl, required this.mannerTemperature});
  

@override final  int userId;
@override final  String nickname;
@override final  String profileImageUrl;
@override final  double mannerTemperature;

/// Create a copy of TicketingSellerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingSellerEntityCopyWith<_TicketingSellerEntity> get copyWith => __$TicketingSellerEntityCopyWithImpl<_TicketingSellerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingSellerEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&(identical(other.mannerTemperature, mannerTemperature) || other.mannerTemperature == mannerTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,userId,nickname,profileImageUrl,mannerTemperature);

@override
String toString() {
  return 'TicketingSellerEntity(userId: $userId, nickname: $nickname, profileImageUrl: $profileImageUrl, mannerTemperature: $mannerTemperature)';
}


}

/// @nodoc
abstract mixin class _$TicketingSellerEntityCopyWith<$Res> implements $TicketingSellerEntityCopyWith<$Res> {
  factory _$TicketingSellerEntityCopyWith(_TicketingSellerEntity value, $Res Function(_TicketingSellerEntity) _then) = __$TicketingSellerEntityCopyWithImpl;
@override @useResult
$Res call({
 int userId, String nickname, String profileImageUrl, double mannerTemperature
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? nickname = null,Object? profileImageUrl = null,Object? mannerTemperature = null,}) {
  return _then(_TicketingSellerEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,profileImageUrl: null == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String,mannerTemperature: null == mannerTemperature ? _self.mannerTemperature : mannerTemperature // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
