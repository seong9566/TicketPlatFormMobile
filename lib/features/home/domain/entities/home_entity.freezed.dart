// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEntity {

 List<PopularTicketEntity> get popularTickets; List<RecommendedEventEntity> get recommendedEvents;
/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<HomeEntity> get copyWith => _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEntity&&const DeepCollectionEquality().equals(other.popularTickets, popularTickets)&&const DeepCollectionEquality().equals(other.recommendedEvents, recommendedEvents));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(popularTickets),const DeepCollectionEquality().hash(recommendedEvents));

@override
String toString() {
  return 'HomeEntity(popularTickets: $popularTickets, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res>  {
  factory $HomeEntityCopyWith(HomeEntity value, $Res Function(HomeEntity) _then) = _$HomeEntityCopyWithImpl;
@useResult
$Res call({
 List<PopularTicketEntity> popularTickets, List<RecommendedEventEntity> recommendedEvents
});




}
/// @nodoc
class _$HomeEntityCopyWithImpl<$Res>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._self, this._then);

  final HomeEntity _self;
  final $Res Function(HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? popularTickets = null,Object? recommendedEvents = null,}) {
  return _then(_self.copyWith(
popularTickets: null == popularTickets ? _self.popularTickets : popularTickets // ignore: cast_nullable_to_non_nullable
as List<PopularTicketEntity>,recommendedEvents: null == recommendedEvents ? _self.recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEntity].
extension HomeEntityPatterns on HomeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PopularTicketEntity> popularTickets,  List<RecommendedEventEntity> recommendedEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.popularTickets,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PopularTicketEntity> popularTickets,  List<RecommendedEventEntity> recommendedEvents)  $default,) {final _that = this;
switch (_that) {
case _HomeEntity():
return $default(_that.popularTickets,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PopularTicketEntity> popularTickets,  List<RecommendedEventEntity> recommendedEvents)?  $default,) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.popularTickets,_that.recommendedEvents);case _:
  return null;

}
}

}

/// @nodoc


class _HomeEntity implements HomeEntity {
  const _HomeEntity({required final  List<PopularTicketEntity> popularTickets, required final  List<RecommendedEventEntity> recommendedEvents}): _popularTickets = popularTickets,_recommendedEvents = recommendedEvents;
  

 final  List<PopularTicketEntity> _popularTickets;
@override List<PopularTicketEntity> get popularTickets {
  if (_popularTickets is EqualUnmodifiableListView) return _popularTickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTickets);
}

 final  List<RecommendedEventEntity> _recommendedEvents;
@override List<RecommendedEventEntity> get recommendedEvents {
  if (_recommendedEvents is EqualUnmodifiableListView) return _recommendedEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedEvents);
}


/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeEntityCopyWith<_HomeEntity> get copyWith => __$HomeEntityCopyWithImpl<_HomeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeEntity&&const DeepCollectionEquality().equals(other._popularTickets, _popularTickets)&&const DeepCollectionEquality().equals(other._recommendedEvents, _recommendedEvents));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularTickets),const DeepCollectionEquality().hash(_recommendedEvents));

@override
String toString() {
  return 'HomeEntity(popularTickets: $popularTickets, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res> implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(_HomeEntity value, $Res Function(_HomeEntity) _then) = __$HomeEntityCopyWithImpl;
@override @useResult
$Res call({
 List<PopularTicketEntity> popularTickets, List<RecommendedEventEntity> recommendedEvents
});




}
/// @nodoc
class __$HomeEntityCopyWithImpl<$Res>
    implements _$HomeEntityCopyWith<$Res> {
  __$HomeEntityCopyWithImpl(this._self, this._then);

  final _HomeEntity _self;
  final $Res Function(_HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? popularTickets = null,Object? recommendedEvents = null,}) {
  return _then(_HomeEntity(
popularTickets: null == popularTickets ? _self._popularTickets : popularTickets // ignore: cast_nullable_to_non_nullable
as List<PopularTicketEntity>,recommendedEvents: null == recommendedEvents ? _self._recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventEntity>,
  ));
}


}

/// @nodoc
mixin _$PopularTicketEntity {

 int get ticketId; String get ticketTitle; int get price; String? get posterImageUrl; String? get eventTitle; String get eventDate;
/// Create a copy of PopularTicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularTicketEntityCopyWith<PopularTicketEntity> get copyWith => _$PopularTicketEntityCopyWithImpl<PopularTicketEntity>(this as PopularTicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,price,posterImageUrl,eventTitle,eventDate);

@override
String toString() {
  return 'PopularTicketEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, price: $price, posterImageUrl: $posterImageUrl, eventTitle: $eventTitle, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class $PopularTicketEntityCopyWith<$Res>  {
  factory $PopularTicketEntityCopyWith(PopularTicketEntity value, $Res Function(PopularTicketEntity) _then) = _$PopularTicketEntityCopyWithImpl;
@useResult
$Res call({
 int ticketId, String ticketTitle, int price, String? posterImageUrl, String? eventTitle, String eventDate
});




}
/// @nodoc
class _$PopularTicketEntityCopyWithImpl<$Res>
    implements $PopularTicketEntityCopyWith<$Res> {
  _$PopularTicketEntityCopyWithImpl(this._self, this._then);

  final PopularTicketEntity _self;
  final $Res Function(PopularTicketEntity) _then;

/// Create a copy of PopularTicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? price = null,Object? posterImageUrl = freezed,Object? eventTitle = freezed,Object? eventDate = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularTicketEntity].
extension PopularTicketEntityPatterns on PopularTicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularTicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularTicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularTicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _PopularTicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularTicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PopularTicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String eventDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularTicketEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.price,_that.posterImageUrl,_that.eventTitle,_that.eventDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String eventDate)  $default,) {final _that = this;
switch (_that) {
case _PopularTicketEntity():
return $default(_that.ticketId,_that.ticketTitle,_that.price,_that.posterImageUrl,_that.eventTitle,_that.eventDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String eventDate)?  $default,) {final _that = this;
switch (_that) {
case _PopularTicketEntity() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.price,_that.posterImageUrl,_that.eventTitle,_that.eventDate);case _:
  return null;

}
}

}

/// @nodoc


class _PopularTicketEntity implements PopularTicketEntity {
  const _PopularTicketEntity({required this.ticketId, required this.ticketTitle, required this.price, this.posterImageUrl, this.eventTitle, required this.eventDate});
  

@override final  int ticketId;
@override final  String ticketTitle;
@override final  int price;
@override final  String? posterImageUrl;
@override final  String? eventTitle;
@override final  String eventDate;

/// Create a copy of PopularTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularTicketEntityCopyWith<_PopularTicketEntity> get copyWith => __$PopularTicketEntityCopyWithImpl<_PopularTicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularTicketEntity&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,price,posterImageUrl,eventTitle,eventDate);

@override
String toString() {
  return 'PopularTicketEntity(ticketId: $ticketId, ticketTitle: $ticketTitle, price: $price, posterImageUrl: $posterImageUrl, eventTitle: $eventTitle, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class _$PopularTicketEntityCopyWith<$Res> implements $PopularTicketEntityCopyWith<$Res> {
  factory _$PopularTicketEntityCopyWith(_PopularTicketEntity value, $Res Function(_PopularTicketEntity) _then) = __$PopularTicketEntityCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String ticketTitle, int price, String? posterImageUrl, String? eventTitle, String eventDate
});




}
/// @nodoc
class __$PopularTicketEntityCopyWithImpl<$Res>
    implements _$PopularTicketEntityCopyWith<$Res> {
  __$PopularTicketEntityCopyWithImpl(this._self, this._then);

  final _PopularTicketEntity _self;
  final $Res Function(_PopularTicketEntity) _then;

/// Create a copy of PopularTicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? price = null,Object? posterImageUrl = freezed,Object? eventTitle = freezed,Object? eventDate = null,}) {
  return _then(_PopularTicketEntity(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RecommendedEventEntity {

 int get eventId; String get eventTitle; String get posterImageUrl; String get eventDate; int get ticketCount;
/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedEventEntityCopyWith<RecommendedEventEntity> get copyWith => _$RecommendedEventEntityCopyWithImpl<RecommendedEventEntity>(this as RecommendedEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,eventDate,ticketCount);

@override
String toString() {
  return 'RecommendedEventEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, eventDate: $eventDate, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $RecommendedEventEntityCopyWith<$Res>  {
  factory $RecommendedEventEntityCopyWith(RecommendedEventEntity value, $Res Function(RecommendedEventEntity) _then) = _$RecommendedEventEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String posterImageUrl, String eventDate, int ticketCount
});




}
/// @nodoc
class _$RecommendedEventEntityCopyWithImpl<$Res>
    implements $RecommendedEventEntityCopyWith<$Res> {
  _$RecommendedEventEntityCopyWithImpl(this._self, this._then);

  final RecommendedEventEntity _self;
  final $Res Function(RecommendedEventEntity) _then;

/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = null,Object? eventDate = null,Object? ticketCount = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: null == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommendedEventEntity].
extension RecommendedEventEntityPatterns on RecommendedEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendedEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendedEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _RecommendedEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendedEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String posterImageUrl,  String eventDate,  int ticketCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.eventDate,_that.ticketCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String posterImageUrl,  String eventDate,  int ticketCount)  $default,) {final _that = this;
switch (_that) {
case _RecommendedEventEntity():
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.eventDate,_that.ticketCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String posterImageUrl,  String eventDate,  int ticketCount)?  $default,) {final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.eventDate,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc


class _RecommendedEventEntity implements RecommendedEventEntity {
  const _RecommendedEventEntity({required this.eventId, required this.eventTitle, required this.posterImageUrl, required this.eventDate, required this.ticketCount});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String posterImageUrl;
@override final  String eventDate;
@override final  int ticketCount;

/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendedEventEntityCopyWith<_RecommendedEventEntity> get copyWith => __$RecommendedEventEntityCopyWithImpl<_RecommendedEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendedEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,eventDate,ticketCount);

@override
String toString() {
  return 'RecommendedEventEntity(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, eventDate: $eventDate, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$RecommendedEventEntityCopyWith<$Res> implements $RecommendedEventEntityCopyWith<$Res> {
  factory _$RecommendedEventEntityCopyWith(_RecommendedEventEntity value, $Res Function(_RecommendedEventEntity) _then) = __$RecommendedEventEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String posterImageUrl, String eventDate, int ticketCount
});




}
/// @nodoc
class __$RecommendedEventEntityCopyWithImpl<$Res>
    implements _$RecommendedEventEntityCopyWith<$Res> {
  __$RecommendedEventEntityCopyWithImpl(this._self, this._then);

  final _RecommendedEventEntity _self;
  final $Res Function(_RecommendedEventEntity) _then;

/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = null,Object? eventDate = null,Object? ticketCount = null,}) {
  return _then(_RecommendedEventEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: null == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
