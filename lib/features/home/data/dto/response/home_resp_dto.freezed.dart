// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeRespDto {

 List<PopularEventDto> get popularEvents; List<RecommendedEventDto> get recommendedEvents;
/// Create a copy of HomeRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeRespDtoCopyWith<HomeRespDto> get copyWith => _$HomeRespDtoCopyWithImpl<HomeRespDto>(this as HomeRespDto, _$identity);

  /// Serializes this HomeRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRespDto&&const DeepCollectionEquality().equals(other.popularEvents, popularEvents)&&const DeepCollectionEquality().equals(other.recommendedEvents, recommendedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(popularEvents),const DeepCollectionEquality().hash(recommendedEvents));

@override
String toString() {
  return 'HomeRespDto(popularEvents: $popularEvents, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class $HomeRespDtoCopyWith<$Res>  {
  factory $HomeRespDtoCopyWith(HomeRespDto value, $Res Function(HomeRespDto) _then) = _$HomeRespDtoCopyWithImpl;
@useResult
$Res call({
 List<PopularEventDto> popularEvents, List<RecommendedEventDto> recommendedEvents
});




}
/// @nodoc
class _$HomeRespDtoCopyWithImpl<$Res>
    implements $HomeRespDtoCopyWith<$Res> {
  _$HomeRespDtoCopyWithImpl(this._self, this._then);

  final HomeRespDto _self;
  final $Res Function(HomeRespDto) _then;

/// Create a copy of HomeRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? popularEvents = null,Object? recommendedEvents = null,}) {
  return _then(_self.copyWith(
popularEvents: null == popularEvents ? _self.popularEvents : popularEvents // ignore: cast_nullable_to_non_nullable
as List<PopularEventDto>,recommendedEvents: null == recommendedEvents ? _self.recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeRespDto].
extension HomeRespDtoPatterns on HomeRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeRespDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PopularEventDto> popularEvents,  List<RecommendedEventDto> recommendedEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
return $default(_that.popularEvents,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PopularEventDto> popularEvents,  List<RecommendedEventDto> recommendedEvents)  $default,) {final _that = this;
switch (_that) {
case _HomeRespDto():
return $default(_that.popularEvents,_that.recommendedEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PopularEventDto> popularEvents,  List<RecommendedEventDto> recommendedEvents)?  $default,) {final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
return $default(_that.popularEvents,_that.recommendedEvents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeRespDto implements HomeRespDto {
  const _HomeRespDto({required final  List<PopularEventDto> popularEvents, required final  List<RecommendedEventDto> recommendedEvents}): _popularEvents = popularEvents,_recommendedEvents = recommendedEvents;
  factory _HomeRespDto.fromJson(Map<String, dynamic> json) => _$HomeRespDtoFromJson(json);

 final  List<PopularEventDto> _popularEvents;
@override List<PopularEventDto> get popularEvents {
  if (_popularEvents is EqualUnmodifiableListView) return _popularEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularEvents);
}

 final  List<RecommendedEventDto> _recommendedEvents;
@override List<RecommendedEventDto> get recommendedEvents {
  if (_recommendedEvents is EqualUnmodifiableListView) return _recommendedEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedEvents);
}


/// Create a copy of HomeRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeRespDtoCopyWith<_HomeRespDto> get copyWith => __$HomeRespDtoCopyWithImpl<_HomeRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRespDto&&const DeepCollectionEquality().equals(other._popularEvents, _popularEvents)&&const DeepCollectionEquality().equals(other._recommendedEvents, _recommendedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularEvents),const DeepCollectionEquality().hash(_recommendedEvents));

@override
String toString() {
  return 'HomeRespDto(popularEvents: $popularEvents, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class _$HomeRespDtoCopyWith<$Res> implements $HomeRespDtoCopyWith<$Res> {
  factory _$HomeRespDtoCopyWith(_HomeRespDto value, $Res Function(_HomeRespDto) _then) = __$HomeRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PopularEventDto> popularEvents, List<RecommendedEventDto> recommendedEvents
});




}
/// @nodoc
class __$HomeRespDtoCopyWithImpl<$Res>
    implements _$HomeRespDtoCopyWith<$Res> {
  __$HomeRespDtoCopyWithImpl(this._self, this._then);

  final _HomeRespDto _self;
  final $Res Function(_HomeRespDto) _then;

/// Create a copy of HomeRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? popularEvents = null,Object? recommendedEvents = null,}) {
  return _then(_HomeRespDto(
popularEvents: null == popularEvents ? _self._popularEvents : popularEvents // ignore: cast_nullable_to_non_nullable
as List<PopularEventDto>,recommendedEvents: null == recommendedEvents ? _self._recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventDto>,
  ));
}


}


/// @nodoc
mixin _$PopularEventDto {

 int get eventId; String get eventTitle; String? get eventDescription; String get eventDate; String get venue; int get minTicketPrice; int get originalMinTicketPrice; int get ticketDiscountRate; String? get posterImageUrl; int get availableTicketCount; int get categoryId;
/// Create a copy of PopularEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularEventDtoCopyWith<PopularEventDto> get copyWith => _$PopularEventDtoCopyWithImpl<PopularEventDto>(this as PopularEventDto, _$identity);

  /// Serializes this PopularEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDescription,eventDate,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'PopularEventDto(eventId: $eventId, eventTitle: $eventTitle, eventDescription: $eventDescription, eventDate: $eventDate, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $PopularEventDtoCopyWith<$Res>  {
  factory $PopularEventDtoCopyWith(PopularEventDto value, $Res Function(PopularEventDto) _then) = _$PopularEventDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String? eventDescription, String eventDate, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class _$PopularEventDtoCopyWithImpl<$Res>
    implements $PopularEventDtoCopyWith<$Res> {
  _$PopularEventDtoCopyWithImpl(this._self, this._then);

  final PopularEventDto _self;
  final $Res Function(PopularEventDto) _then;

/// Create a copy of PopularEventDto
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


/// Adds pattern-matching-related methods to [PopularEventDto].
extension PopularEventDtoPatterns on PopularEventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularEventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularEventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularEventDto value)  $default,){
final _that = this;
switch (_that) {
case _PopularEventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularEventDto value)?  $default,){
final _that = this;
switch (_that) {
case _PopularEventDto() when $default != null:
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
case _PopularEventDto() when $default != null:
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
case _PopularEventDto():
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
case _PopularEventDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDescription,_that.eventDate,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularEventDto implements PopularEventDto {
  const _PopularEventDto({required this.eventId, required this.eventTitle, this.eventDescription, required this.eventDate, required this.venue, required this.minTicketPrice, required this.originalMinTicketPrice, required this.ticketDiscountRate, this.posterImageUrl, required this.availableTicketCount, required this.categoryId});
  factory _PopularEventDto.fromJson(Map<String, dynamic> json) => _$PopularEventDtoFromJson(json);

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

/// Create a copy of PopularEventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularEventDtoCopyWith<_PopularEventDto> get copyWith => __$PopularEventDtoCopyWithImpl<_PopularEventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularEventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDescription,eventDate,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId);

@override
String toString() {
  return 'PopularEventDto(eventId: $eventId, eventTitle: $eventTitle, eventDescription: $eventDescription, eventDate: $eventDate, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$PopularEventDtoCopyWith<$Res> implements $PopularEventDtoCopyWith<$Res> {
  factory _$PopularEventDtoCopyWith(_PopularEventDto value, $Res Function(_PopularEventDto) _then) = __$PopularEventDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String? eventDescription, String eventDate, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId
});




}
/// @nodoc
class __$PopularEventDtoCopyWithImpl<$Res>
    implements _$PopularEventDtoCopyWith<$Res> {
  __$PopularEventDtoCopyWithImpl(this._self, this._then);

  final _PopularEventDto _self;
  final $Res Function(_PopularEventDto) _then;

/// Create a copy of PopularEventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDescription = freezed,Object? eventDate = null,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,}) {
  return _then(_PopularEventDto(
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
mixin _$RecommendedEventDto {

 int get eventId; String get eventTitle; String get eventDate; String? get eventDescription; String get venue; int get minTicketPrice; int get originalMinTicketPrice; int get ticketDiscountRate; String? get posterImageUrl; int get availableTicketCount; int get categoryId; bool get isWishedByMe;
/// Create a copy of RecommendedEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedEventDtoCopyWith<RecommendedEventDto> get copyWith => _$RecommendedEventDtoCopyWithImpl<RecommendedEventDto>(this as RecommendedEventDto, _$identity);

  /// Serializes this RecommendedEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isWishedByMe, isWishedByMe) || other.isWishedByMe == isWishedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,eventDescription,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId,isWishedByMe);

@override
String toString() {
  return 'RecommendedEventDto(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, eventDescription: $eventDescription, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId, isWishedByMe: $isWishedByMe)';
}


}

/// @nodoc
abstract mixin class $RecommendedEventDtoCopyWith<$Res>  {
  factory $RecommendedEventDtoCopyWith(RecommendedEventDto value, $Res Function(RecommendedEventDto) _then) = _$RecommendedEventDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String? eventDescription, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId, bool isWishedByMe
});




}
/// @nodoc
class _$RecommendedEventDtoCopyWithImpl<$Res>
    implements $RecommendedEventDtoCopyWith<$Res> {
  _$RecommendedEventDtoCopyWithImpl(this._self, this._then);

  final RecommendedEventDto _self;
  final $Res Function(RecommendedEventDto) _then;

/// Create a copy of RecommendedEventDto
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


/// Adds pattern-matching-related methods to [RecommendedEventDto].
extension RecommendedEventDtoPatterns on RecommendedEventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendedEventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendedEventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendedEventDto value)  $default,){
final _that = this;
switch (_that) {
case _RecommendedEventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendedEventDto value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendedEventDto() when $default != null:
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
case _RecommendedEventDto() when $default != null:
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
case _RecommendedEventDto():
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
case _RecommendedEventDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.eventDate,_that.eventDescription,_that.venue,_that.minTicketPrice,_that.originalMinTicketPrice,_that.ticketDiscountRate,_that.posterImageUrl,_that.availableTicketCount,_that.categoryId,_that.isWishedByMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendedEventDto implements RecommendedEventDto {
  const _RecommendedEventDto({required this.eventId, required this.eventTitle, required this.eventDate, this.eventDescription, required this.venue, required this.minTicketPrice, required this.originalMinTicketPrice, required this.ticketDiscountRate, this.posterImageUrl, required this.availableTicketCount, required this.categoryId, required this.isWishedByMe});
  factory _RecommendedEventDto.fromJson(Map<String, dynamic> json) => _$RecommendedEventDtoFromJson(json);

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

/// Create a copy of RecommendedEventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendedEventDtoCopyWith<_RecommendedEventDto> get copyWith => __$RecommendedEventDtoCopyWithImpl<_RecommendedEventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendedEventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendedEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.minTicketPrice, minTicketPrice) || other.minTicketPrice == minTicketPrice)&&(identical(other.originalMinTicketPrice, originalMinTicketPrice) || other.originalMinTicketPrice == originalMinTicketPrice)&&(identical(other.ticketDiscountRate, ticketDiscountRate) || other.ticketDiscountRate == ticketDiscountRate)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.availableTicketCount, availableTicketCount) || other.availableTicketCount == availableTicketCount)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isWishedByMe, isWishedByMe) || other.isWishedByMe == isWishedByMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,eventDate,eventDescription,venue,minTicketPrice,originalMinTicketPrice,ticketDiscountRate,posterImageUrl,availableTicketCount,categoryId,isWishedByMe);

@override
String toString() {
  return 'RecommendedEventDto(eventId: $eventId, eventTitle: $eventTitle, eventDate: $eventDate, eventDescription: $eventDescription, venue: $venue, minTicketPrice: $minTicketPrice, originalMinTicketPrice: $originalMinTicketPrice, ticketDiscountRate: $ticketDiscountRate, posterImageUrl: $posterImageUrl, availableTicketCount: $availableTicketCount, categoryId: $categoryId, isWishedByMe: $isWishedByMe)';
}


}

/// @nodoc
abstract mixin class _$RecommendedEventDtoCopyWith<$Res> implements $RecommendedEventDtoCopyWith<$Res> {
  factory _$RecommendedEventDtoCopyWith(_RecommendedEventDto value, $Res Function(_RecommendedEventDto) _then) = __$RecommendedEventDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String eventDate, String? eventDescription, String venue, int minTicketPrice, int originalMinTicketPrice, int ticketDiscountRate, String? posterImageUrl, int availableTicketCount, int categoryId, bool isWishedByMe
});




}
/// @nodoc
class __$RecommendedEventDtoCopyWithImpl<$Res>
    implements _$RecommendedEventDtoCopyWith<$Res> {
  __$RecommendedEventDtoCopyWithImpl(this._self, this._then);

  final _RecommendedEventDto _self;
  final $Res Function(_RecommendedEventDto) _then;

/// Create a copy of RecommendedEventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? eventDate = null,Object? eventDescription = freezed,Object? venue = null,Object? minTicketPrice = null,Object? originalMinTicketPrice = null,Object? ticketDiscountRate = null,Object? posterImageUrl = freezed,Object? availableTicketCount = null,Object? categoryId = null,Object? isWishedByMe = null,}) {
  return _then(_RecommendedEventDto(
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
