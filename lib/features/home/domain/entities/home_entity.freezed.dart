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

 List<DeadlineDealEntity> get deadlineDeals; List<PopularEventEntity> get popularEvents; List<RecommendedEventEntity> get recommendedEvents;
/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<HomeEntity> get copyWith => _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEntity&&const DeepCollectionEquality().equals(other.deadlineDeals, deadlineDeals)&&const DeepCollectionEquality().equals(other.popularEvents, popularEvents)&&const DeepCollectionEquality().equals(other.recommendedEvents, recommendedEvents));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(deadlineDeals),const DeepCollectionEquality().hash(popularEvents),const DeepCollectionEquality().hash(recommendedEvents));

@override
String toString() {
  return 'HomeEntity(deadlineDeals: $deadlineDeals, popularEvents: $popularEvents, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res>  {
  factory $HomeEntityCopyWith(HomeEntity value, $Res Function(HomeEntity) _then) = _$HomeEntityCopyWithImpl;
@useResult
$Res call({
 List<DeadlineDealEntity> deadlineDeals, List<PopularEventEntity> popularEvents, List<RecommendedEventEntity> recommendedEvents
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
@pragma('vm:prefer-inline') @override $Res call({Object? deadlineDeals = null,Object? popularEvents = null,Object? recommendedEvents = null,}) {
  return _then(_self.copyWith(
deadlineDeals: null == deadlineDeals ? _self.deadlineDeals : deadlineDeals // ignore: cast_nullable_to_non_nullable
as List<DeadlineDealEntity>,popularEvents: null == popularEvents ? _self.popularEvents : popularEvents // ignore: cast_nullable_to_non_nullable
as List<PopularEventEntity>,recommendedEvents: null == recommendedEvents ? _self.recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeadlineDealEntity> deadlineDeals,  List<PopularEventEntity> popularEvents,  List<RecommendedEventEntity> recommendedEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.deadlineDeals,_that.popularEvents,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeadlineDealEntity> deadlineDeals,  List<PopularEventEntity> popularEvents,  List<RecommendedEventEntity> recommendedEvents)  $default,) {final _that = this;
switch (_that) {
case _HomeEntity():
return $default(_that.deadlineDeals,_that.popularEvents,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeadlineDealEntity> deadlineDeals,  List<PopularEventEntity> popularEvents,  List<RecommendedEventEntity> recommendedEvents)?  $default,) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.deadlineDeals,_that.popularEvents,_that.recommendedEvents);case _:
  return null;

}
}

}

/// @nodoc


class _HomeEntity implements HomeEntity {
  const _HomeEntity({required final  List<DeadlineDealEntity> deadlineDeals, required final  List<PopularEventEntity> popularEvents, required final  List<RecommendedEventEntity> recommendedEvents}): _deadlineDeals = deadlineDeals,_popularEvents = popularEvents,_recommendedEvents = recommendedEvents;
  

 final  List<DeadlineDealEntity> _deadlineDeals;
@override List<DeadlineDealEntity> get deadlineDeals {
  if (_deadlineDeals is EqualUnmodifiableListView) return _deadlineDeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deadlineDeals);
}

 final  List<PopularEventEntity> _popularEvents;
@override List<PopularEventEntity> get popularEvents {
  if (_popularEvents is EqualUnmodifiableListView) return _popularEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularEvents);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeEntity&&const DeepCollectionEquality().equals(other._deadlineDeals, _deadlineDeals)&&const DeepCollectionEquality().equals(other._popularEvents, _popularEvents)&&const DeepCollectionEquality().equals(other._recommendedEvents, _recommendedEvents));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_deadlineDeals),const DeepCollectionEquality().hash(_popularEvents),const DeepCollectionEquality().hash(_recommendedEvents));

@override
String toString() {
  return 'HomeEntity(deadlineDeals: $deadlineDeals, popularEvents: $popularEvents, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res> implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(_HomeEntity value, $Res Function(_HomeEntity) _then) = __$HomeEntityCopyWithImpl;
@override @useResult
$Res call({
 List<DeadlineDealEntity> deadlineDeals, List<PopularEventEntity> popularEvents, List<RecommendedEventEntity> recommendedEvents
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
@override @pragma('vm:prefer-inline') $Res call({Object? deadlineDeals = null,Object? popularEvents = null,Object? recommendedEvents = null,}) {
  return _then(_HomeEntity(
deadlineDeals: null == deadlineDeals ? _self._deadlineDeals : deadlineDeals // ignore: cast_nullable_to_non_nullable
as List<DeadlineDealEntity>,popularEvents: null == popularEvents ? _self._popularEvents : popularEvents // ignore: cast_nullable_to_non_nullable
as List<PopularEventEntity>,recommendedEvents: null == recommendedEvents ? _self._recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventEntity>,
  ));
}


}

/// @nodoc
mixin _$DeadlineDealEntity {

 int get eventId; String get eventTitle; String get eventDate; String get venue; int get daysLeft; int get minTicketPrice; int get originalMinTicketPrice; int get ticketDiscountRate; String? get posterImageUrl; int get availableTicketCount; int get categoryId;
/// Create a copy of DeadlineDealEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeadlineDealEntityCopyWith<DeadlineDealEntity> get copyWith => _$DeadlineDealEntityCopyWithImpl<DeadlineDealEntity>(this as DeadlineDealEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeadlineDealEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.daysLeft, daysLeft) || other.daysLeft == daysLeft)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,venue,daysLeft,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'DeadlineDealEntity(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, venue: $venue, daysLeft: $daysLeft, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $DeadlineDealEntityCopyWith<$Res>  {
  factory $DeadlineDealEntityCopyWith(DeadlineDealEntity value, $Res Function(DeadlineDealEntity) _then) = _$DeadlineDealEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String venue, int daysLeft, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class _$DeadlineDealEntityCopyWithImpl<$Res>
    implements $DeadlineDealEntityCopyWith<$Res> {
  _$DeadlineDealEntityCopyWithImpl(this._self, this._then);

  final DeadlineDealEntity _self;
  final $Res Function(DeadlineDealEntity) _then;

/// Create a copy of DeadlineDealEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDate = null,Object? venue = null,Object? daysLeft = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,daysLeft: null == daysLeft ? _self.daysLeft : daysLeft // ignore: cast_nullable_to_non_nullable
as int,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeadlineDealEntity].
extension DeadlineDealEntityPatterns on DeadlineDealEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeadlineDealEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeadlineDealEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeadlineDealEntity value)  $default,){
final _that = this;
switch (_that) {
case _DeadlineDealEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeadlineDealEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DeadlineDealEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventDate,  String venue,  int daysLeft,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeadlineDealEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.venue,_that.daysLeft,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventDate,  String venue,  int daysLeft,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)  $default,) {final _that = this;
switch (_that) {
case _DeadlineDealEntity():
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.venue,_that.daysLeft,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String eventDate,  String venue,  int daysLeft,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)?  $default,) {final _that = this;
switch (_that) {
case _DeadlineDealEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.venue,_that.daysLeft,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _DeadlineDealEntity implements DeadlineDealEntity {
  const _DeadlineDealEntity({required this.eventId, required this.eventTitle, required this.eventDate, required this.venue, required this.daysLeft, required this.minTicketPrice, required this.originalMinTicketPrice, required this.ticketDiscountRate, this.posterImageUrl, required this.availableTicketCount, required this.categoryId});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String eventDate;
@override final  String venue;
@override final  int daysLeft;
@override final  int minTicketPrice;
@override final  int originalMinTicketPrice;
@override final  int ticketDiscountRate;
@override final  String? posterImageUrl;
@override final  int availableTicketCount;
@override final  int categoryId;

/// Create a copy of DeadlineDealEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeadlineDealEntityCopyWith<_DeadlineDealEntity> get copyWith => __$DeadlineDealEntityCopyWithImpl<_DeadlineDealEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeadlineDealEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.daysLeft, daysLeft) || other.daysLeft == daysLeft)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,venue,daysLeft,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'DeadlineDealEntity(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, venue: $venue, daysLeft: $daysLeft, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$DeadlineDealEntityCopyWith<$Res> implements $DeadlineDealEntityCopyWith<$Res> {
  factory _$DeadlineDealEntityCopyWith(_DeadlineDealEntity value, $Res Function(_DeadlineDealEntity) _then) = __$DeadlineDealEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String venue, int daysLeft, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class __$DeadlineDealEntityCopyWithImpl<$Res>
    implements _$DeadlineDealEntityCopyWith<$Res> {
  __$DeadlineDealEntityCopyWithImpl(this._self, this._then);

  final _DeadlineDealEntity _self;
  final $Res Function(_DeadlineDealEntity) _then;

/// Create a copy of DeadlineDealEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDate = null,Object? venue = null,Object? daysLeft = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,}) {
  return _then(_DeadlineDealEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,daysLeft: null == daysLeft ? _self.daysLeft : daysLeft // ignore: cast_nullable_to_non_nullable
as int,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PopularEventEntity {

 int get eventId; String get eventTitle; String? get eventDescription; String get eventDate; String get venue; int get minTicketPrice; int get originalMinTicketPrice; int get ticketDiscountRate; String? get posterImageUrl; int get availableTicketCount; int get categoryId;
/// Create a copy of PopularEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularEventEntityCopyWith<PopularEventEntity> get copyWith => _$PopularEventEntityCopyWithImpl<PopularEventEntity>(this as PopularEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDescription,eventDate,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'PopularEventEntity(eventId: $eventId, eventTitle: $eventTitle, eventDescription: $eventDescription, eventDate: $eventDate, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $PopularEventEntityCopyWith<$Res>  {
  factory $PopularEventEntityCopyWith(PopularEventEntity value, $Res Function(PopularEventEntity) _then) = _$PopularEventEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? eventDescription, String eventDate, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class _$PopularEventEntityCopyWithImpl<$Res>
    implements $PopularEventEntityCopyWith<$Res> {
  _$PopularEventEntityCopyWithImpl(this._self, this._then);

  final PopularEventEntity _self;
  final $Res Function(PopularEventEntity) _then;

/// Create a copy of PopularEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDescription = freezed,Object? eventDate = null,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularEventEntity].
extension PopularEventEntityPatterns on PopularEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _PopularEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PopularEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventDescription,  String eventDate,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDescription,_that.eventDate,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String? eventDescription,  String eventDate,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)  $default,) {final _that = this;
switch (_that) {
case _PopularEventEntity():
return $default(_that.eventId,_that.eventTitle,_that.eventDescription,_that.eventDate,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String? eventDescription,  String eventDate,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId)?  $default,) {final _that = this;
switch (_that) {
case _PopularEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDescription,_that.eventDate,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _PopularEventEntity implements PopularEventEntity {
  const _PopularEventEntity({required this.eventId, required this.eventTitle, this.eventDescription, required this.eventDate, required this.venue, required this.minTicketPrice, required this.originalMinTicketPrice, required this.ticketDiscountRate, this.posterImageUrl, required this.availableTicketCount, required this.categoryId});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String? eventDescription;
@override final  String eventDate;
@override final  String venue;
@override final  int minTicketPrice;
@override final  int originalMinTicketPrice;
@override final  int ticketDiscountRate;
@override final  String? posterImageUrl;
@override final  int availableTicketCount;
@override final  int categoryId;

/// Create a copy of PopularEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularEventEntityCopyWith<_PopularEventEntity> get copyWith => __$PopularEventEntityCopyWithImpl<_PopularEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDescription,eventDate,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'PopularEventEntity(eventId: $eventId, eventTitle: $eventTitle, eventDescription: $eventDescription, eventDate: $eventDate, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$PopularEventEntityCopyWith<$Res> implements $PopularEventEntityCopyWith<$Res> {
  factory _$PopularEventEntityCopyWith(_PopularEventEntity value, $Res Function(_PopularEventEntity) _then) = __$PopularEventEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? eventDescription, String eventDate, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class __$PopularEventEntityCopyWithImpl<$Res>
    implements _$PopularEventEntityCopyWith<$Res> {
  __$PopularEventEntityCopyWithImpl(this._self, this._then);

  final _PopularEventEntity _self;
  final $Res Function(_PopularEventEntity) _then;

/// Create a copy of PopularEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDescription = freezed,Object? eventDate = null,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,}) {
  return _then(_PopularEventEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RecommendedEventEntity {

 int get eventId; String get eventTitle; String get eventDate; String? get eventDescription; String get venue; int get minTicketPrice; int get originalMinTicketPrice; int get ticketDiscountRate; String? get posterImageUrl; int get availableTicketCount; int get categoryId; bool get isWishedByMe;
/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedEventEntityCopyWith<RecommendedEventEntity> get copyWith => _$RecommendedEventEntityCopyWithImpl<RecommendedEventEntity>(this as RecommendedEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isWishedByMe, isWishedByMe) || other.isWishedByMe == isWishedByMe));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,eventDescription,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId,isWishedByMe);

@override
String toString() {
  return 'RecommendedEventEntity(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, eventDescription: $eventDescription, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId, isWishedByMe: $isWishedByMe)';
}


}

/// @nodoc
abstract mixin class $RecommendedEventEntityCopyWith<$Res>  {
  factory $RecommendedEventEntityCopyWith(RecommendedEventEntity value, $Res Function(RecommendedEventEntity) _then) = _$RecommendedEventEntityCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String? eventDescription, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId, bool isWishedByMe
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
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDate = null,Object? eventDescription = freezed,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,Object? isWishedByMe = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isWishedByMe: null == isWishedByMe ? _self.isWishedByMe : isWishedByMe // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventDate,  String? eventDescription,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId,  bool isWishedByMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.eventDescription,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId,_that.isWishedByMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String eventDate,  String? eventDescription,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId,  bool isWishedByMe)  $default,) {final _that = this;
switch (_that) {
case _RecommendedEventEntity():
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.eventDescription,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId,_that.isWishedByMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String eventTitle,  String eventDate,  String? eventDescription,  String venue,  int minTicketPrice,  int originalMinTicketPrice,  int ticketDiscountRate,  String? posterImageUrl,  int availableTicketCount,  int categoryId,  bool isWishedByMe)?  $default,) {final _that = this;
switch (_that) {
case _RecommendedEventEntity() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.eventDescription,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId,_that.isWishedByMe);case _:
  return null;

}
}

}

/// @nodoc


class _RecommendedEventEntity implements RecommendedEventEntity {
  const _RecommendedEventEntity({required this.eventId, required this.eventTitle, required this.eventDate, this.eventDescription, required this.venue, required this.minTicketPrice, required this.originalMinTicketPrice, required this.ticketDiscountRate, this.posterImageUrl, required this.availableTicketCount, required this.categoryId, required this.isWishedByMe});
  

@override final  int eventId;
@override final  String eventTitle;
@override final  String eventDate;
@override final  String? eventDescription;
@override final  String venue;
@override final  int minTicketPrice;
@override final  int originalMinTicketPrice;
@override final  int ticketDiscountRate;
@override final  String? posterImageUrl;
@override final  int availableTicketCount;
@override final  int categoryId;
@override final  bool isWishedByMe;

/// Create a copy of RecommendedEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendedEventEntityCopyWith<_RecommendedEventEntity> get copyWith => __$RecommendedEventEntityCopyWithImpl<_RecommendedEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendedEventEntity&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isWishedByMe, isWishedByMe) || other.isWishedByMe == isWishedByMe));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,eventDescription,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId,isWishedByMe);

@override
String toString() {
  return 'RecommendedEventEntity(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, eventDescription: $eventDescription, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId, isWishedByMe: $isWishedByMe)';
}


}

/// @nodoc
abstract mixin class _$RecommendedEventEntityCopyWith<$Res> implements $RecommendedEventEntityCopyWith<$Res> {
  factory _$RecommendedEventEntityCopyWith(_RecommendedEventEntity value, $Res Function(_RecommendedEventEntity) _then) = __$RecommendedEventEntityCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String? eventDescription, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId, bool isWishedByMe
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
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDate = null,Object? eventDescription = freezed,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,Object? isWishedByMe = null,}) {
  return _then(_RecommendedEventEntity(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,minTicketPrice: null == minTicketPrice ? _self.minTicketPrice : minTicketPrice // ignore: cast_nullable_to_non_nullable
as int,originalMinTicketPrice: null == originalMinTicketPrice ? _self.originalMinTicketPrice : originalMinTicketPrice // ignore: cast_nullable_to_non_nullable
as int,ticketDiscountRate: null == ticketDiscountRate ? _self.ticketDiscountRate : ticketDiscountRate // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,availableTicketCount: null == availableTicketCount ? _self.availableTicketCount : availableTicketCount // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isWishedByMe: null == isWishedByMe ? _self.isWishedByMe : isWishedByMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
