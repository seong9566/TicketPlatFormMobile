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

 List<PopularTicketDto> get popularTickets; List<RecommendedEventDto> get recommendedEvents;
/// Create a copy of HomeRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeRespDtoCopyWith<HomeRespDto> get copyWith => _$HomeRespDtoCopyWithImpl<HomeRespDto>(this as HomeRespDto, _$identity);

  /// Serializes this HomeRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRespDto&&const DeepCollectionEquality().equals(other.popularTickets, popularTickets)&&const DeepCollectionEquality().equals(other.recommendedEvents, recommendedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(popularTickets),const DeepCollectionEquality().hash(recommendedEvents));

@override
String toString() {
  return 'HomeRespDto(popularTickets: $popularTickets, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class $HomeRespDtoCopyWith<$Res>  {
  factory $HomeRespDtoCopyWith(HomeRespDto value, $Res Function(HomeRespDto) _then) = _$HomeRespDtoCopyWithImpl;
@useResult
$Res call({
 List<PopularTicketDto> popularTickets, List<RecommendedEventDto> recommendedEvents
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
@pragma('vm:prefer-inline') @override $Res call({Object? popularTickets = null,Object? recommendedEvents = null,}) {
  return _then(_self.copyWith(
popularTickets: null == popularTickets ? _self.popularTickets : popularTickets // ignore: cast_nullable_to_non_nullable
as List<PopularTicketDto>,recommendedEvents: null == recommendedEvents ? _self.recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PopularTicketDto> popularTickets,  List<RecommendedEventDto> recommendedEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PopularTicketDto> popularTickets,  List<RecommendedEventDto> recommendedEvents)  $default,) {final _that = this;
switch (_that) {
case _HomeRespDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PopularTicketDto> popularTickets,  List<RecommendedEventDto> recommendedEvents)?  $default,) {final _that = this;
switch (_that) {
case _HomeRespDto() when $default != null:
return $default(_that.popularTickets,_that.recommendedEvents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeRespDto implements HomeRespDto {
  const _HomeRespDto({required final  List<PopularTicketDto> popularTickets, required final  List<RecommendedEventDto> recommendedEvents}): _popularTickets = popularTickets,_recommendedEvents = recommendedEvents;
  factory _HomeRespDto.fromJson(Map<String, dynamic> json) => _$HomeRespDtoFromJson(json);

 final  List<PopularTicketDto> _popularTickets;
@override List<PopularTicketDto> get popularTickets {
  if (_popularTickets is EqualUnmodifiableListView) return _popularTickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTickets);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRespDto&&const DeepCollectionEquality().equals(other._popularTickets, _popularTickets)&&const DeepCollectionEquality().equals(other._recommendedEvents, _recommendedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularTickets),const DeepCollectionEquality().hash(_recommendedEvents));

@override
String toString() {
  return 'HomeRespDto(popularTickets: $popularTickets, recommendedEvents: $recommendedEvents)';
}


}

/// @nodoc
abstract mixin class _$HomeRespDtoCopyWith<$Res> implements $HomeRespDtoCopyWith<$Res> {
  factory _$HomeRespDtoCopyWith(_HomeRespDto value, $Res Function(_HomeRespDto) _then) = __$HomeRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PopularTicketDto> popularTickets, List<RecommendedEventDto> recommendedEvents
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
@override @pragma('vm:prefer-inline') $Res call({Object? popularTickets = null,Object? recommendedEvents = null,}) {
  return _then(_HomeRespDto(
popularTickets: null == popularTickets ? _self._popularTickets : popularTickets // ignore: cast_nullable_to_non_nullable
as List<PopularTicketDto>,recommendedEvents: null == recommendedEvents ? _self._recommendedEvents : recommendedEvents // ignore: cast_nullable_to_non_nullable
as List<RecommendedEventDto>,
  ));
}


}


/// @nodoc
mixin _$PopularTicketDto {

 int get ticketId; String get ticketTitle; int get price; String? get posterImageUrl; String? get eventTitle; String? get eventDate;
/// Create a copy of PopularTicketDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularTicketDtoCopyWith<PopularTicketDto> get copyWith => _$PopularTicketDtoCopyWithImpl<PopularTicketDto>(this as PopularTicketDto, _$identity);

  /// Serializes this PopularTicketDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTicketDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,price,posterImageUrl,eventTitle,eventDate);

@override
String toString() {
  return 'PopularTicketDto(ticketId: $ticketId, ticketTitle: $ticketTitle, price: $price, posterImageUrl: $posterImageUrl, eventTitle: $eventTitle, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class $PopularTicketDtoCopyWith<$Res>  {
  factory $PopularTicketDtoCopyWith(PopularTicketDto value, $Res Function(PopularTicketDto) _then) = _$PopularTicketDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String ticketTitle, int price, String? posterImageUrl, String? eventTitle, String? eventDate
});




}
/// @nodoc
class _$PopularTicketDtoCopyWithImpl<$Res>
    implements $PopularTicketDtoCopyWith<$Res> {
  _$PopularTicketDtoCopyWithImpl(this._self, this._then);

  final PopularTicketDto _self;
  final $Res Function(PopularTicketDto) _then;

/// Create a copy of PopularTicketDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? price = null,Object? posterImageUrl = freezed,Object? eventTitle = freezed,Object? eventDate = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularTicketDto].
extension PopularTicketDtoPatterns on PopularTicketDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularTicketDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularTicketDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularTicketDto value)  $default,){
final _that = this;
switch (_that) {
case _PopularTicketDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularTicketDto value)?  $default,){
final _that = this;
switch (_that) {
case _PopularTicketDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String? eventDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularTicketDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String? eventDate)  $default,) {final _that = this;
switch (_that) {
case _PopularTicketDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String ticketTitle,  int price,  String? posterImageUrl,  String? eventTitle,  String? eventDate)?  $default,) {final _that = this;
switch (_that) {
case _PopularTicketDto() when $default != null:
return $default(_that.ticketId,_that.ticketTitle,_that.price,_that.posterImageUrl,_that.eventTitle,_that.eventDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularTicketDto implements PopularTicketDto {
  const _PopularTicketDto({required this.ticketId, required this.ticketTitle, required this.price, this.posterImageUrl, this.eventTitle, this.eventDate});
  factory _PopularTicketDto.fromJson(Map<String, dynamic> json) => _$PopularTicketDtoFromJson(json);

@override final  int ticketId;
@override final  String ticketTitle;
@override final  int price;
@override final  String? posterImageUrl;
@override final  String? eventTitle;
@override final  String? eventDate;

/// Create a copy of PopularTicketDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularTicketDtoCopyWith<_PopularTicketDto> get copyWith => __$PopularTicketDtoCopyWithImpl<_PopularTicketDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularTicketDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularTicketDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,ticketTitle,price,posterImageUrl,eventTitle,eventDate);

@override
String toString() {
  return 'PopularTicketDto(ticketId: $ticketId, ticketTitle: $ticketTitle, price: $price, posterImageUrl: $posterImageUrl, eventTitle: $eventTitle, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class _$PopularTicketDtoCopyWith<$Res> implements $PopularTicketDtoCopyWith<$Res> {
  factory _$PopularTicketDtoCopyWith(_PopularTicketDto value, $Res Function(_PopularTicketDto) _then) = __$PopularTicketDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String ticketTitle, int price, String? posterImageUrl, String? eventTitle, String? eventDate
});




}
/// @nodoc
class __$PopularTicketDtoCopyWithImpl<$Res>
    implements _$PopularTicketDtoCopyWith<$Res> {
  __$PopularTicketDtoCopyWithImpl(this._self, this._then);

  final _PopularTicketDto _self;
  final $Res Function(_PopularTicketDto) _then;

/// Create a copy of PopularTicketDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? ticketTitle = null,Object? price = null,Object? posterImageUrl = freezed,Object? eventTitle = freezed,Object? eventDate = freezed,}) {
  return _then(_PopularTicketDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecommendedEventDto {

 int get eventId; String get eventTitle; String get posterImageUrl; String get eventDate; int get ticketCount;
/// Create a copy of RecommendedEventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedEventDtoCopyWith<RecommendedEventDto> get copyWith => _$RecommendedEventDtoCopyWithImpl<RecommendedEventDto>(this as RecommendedEventDto, _$identity);

  /// Serializes this RecommendedEventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,eventDate,ticketCount);

@override
String toString() {
  return 'RecommendedEventDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, eventDate: $eventDate, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $RecommendedEventDtoCopyWith<$Res>  {
  factory $RecommendedEventDtoCopyWith(RecommendedEventDto value, $Res Function(RecommendedEventDto) _then) = _$RecommendedEventDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String eventTitle, String posterImageUrl, String eventDate, int ticketCount
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String eventTitle,  String posterImageUrl,  String eventDate,  int ticketCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendedEventDto() when $default != null:
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
case _RecommendedEventDto():
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
case _RecommendedEventDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.posterImageUrl,_that.eventDate,_that.ticketCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendedEventDto implements RecommendedEventDto {
  const _RecommendedEventDto({required this.eventId, required this.eventTitle, required this.posterImageUrl, required this.eventDate, required this.ticketCount});
  factory _RecommendedEventDto.fromJson(Map<String, dynamic> json) => _$RecommendedEventDtoFromJson(json);

@override final  int eventId;
@override final  String eventTitle;
@override final  String posterImageUrl;
@override final  String eventDate;
@override final  int ticketCount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendedEventDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,eventTitle,posterImageUrl,eventDate,ticketCount);

@override
String toString() {
  return 'RecommendedEventDto(eventId: $eventId, eventTitle: $eventTitle, posterImageUrl: $posterImageUrl, eventDate: $eventDate, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$RecommendedEventDtoCopyWith<$Res> implements $RecommendedEventDtoCopyWith<$Res> {
  factory _$RecommendedEventDtoCopyWith(_RecommendedEventDto value, $Res Function(_RecommendedEventDto) _then) = __$RecommendedEventDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String eventTitle, String posterImageUrl, String eventDate, int ticketCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? posterImageUrl = null,Object? eventDate = null,Object? ticketCount = null,}) {
  return _then(_RecommendedEventDto(
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
