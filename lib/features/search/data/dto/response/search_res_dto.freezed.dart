// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_res_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventSearchItemDto {

 int get eventId; String get title; String? get eventDate; String? get location; String? get imageUrl; int? get minPrice;
/// Create a copy of EventSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventSearchItemDtoCopyWith<EventSearchItemDto> get copyWith => _$EventSearchItemDtoCopyWithImpl<EventSearchItemDto>(this as EventSearchItemDto, _$identity);

  /// Serializes this EventSearchItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventSearchItemDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDate,location,imageUrl,minPrice);

@override
String toString() {
  return 'EventSearchItemDto(eventId: $eventId, title: $title, eventDate: $eventDate, location: $location, imageUrl: $imageUrl, minPrice: $minPrice)';
}


}

/// @nodoc
abstract mixin class $EventSearchItemDtoCopyWith<$Res>  {
  factory $EventSearchItemDtoCopyWith(EventSearchItemDto value, $Res Function(EventSearchItemDto) _then) = _$EventSearchItemDtoCopyWithImpl;
@useResult
$Res call({
 int eventId, String title, String? eventDate, String? location, String? imageUrl, int? minPrice
});




}
/// @nodoc
class _$EventSearchItemDtoCopyWithImpl<$Res>
    implements $EventSearchItemDtoCopyWith<$Res> {
  _$EventSearchItemDtoCopyWithImpl(this._self, this._then);

  final EventSearchItemDto _self;
  final $Res Function(EventSearchItemDto) _then;

/// Create a copy of EventSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? title = null,Object? eventDate = freezed,Object? location = freezed,Object? imageUrl = freezed,Object? minPrice = freezed,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventSearchItemDto].
extension EventSearchItemDtoPatterns on EventSearchItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventSearchItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventSearchItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventSearchItemDto value)  $default,){
final _that = this;
switch (_that) {
case _EventSearchItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventSearchItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventSearchItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String title,  String? eventDate,  String? location,  String? imageUrl,  int? minPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventSearchItemDto() when $default != null:
return $default(_that.eventId,_that.title,_that.eventDate,_that.location,_that.imageUrl,_that.minPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String title,  String? eventDate,  String? location,  String? imageUrl,  int? minPrice)  $default,) {final _that = this;
switch (_that) {
case _EventSearchItemDto():
return $default(_that.eventId,_that.title,_that.eventDate,_that.location,_that.imageUrl,_that.minPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String title,  String? eventDate,  String? location,  String? imageUrl,  int? minPrice)?  $default,) {final _that = this;
switch (_that) {
case _EventSearchItemDto() when $default != null:
return $default(_that.eventId,_that.title,_that.eventDate,_that.location,_that.imageUrl,_that.minPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventSearchItemDto implements EventSearchItemDto {
  const _EventSearchItemDto({required this.eventId, required this.title, this.eventDate, this.location, this.imageUrl, this.minPrice});
  factory _EventSearchItemDto.fromJson(Map<String, dynamic> json) => _$EventSearchItemDtoFromJson(json);

@override final  int eventId;
@override final  String title;
@override final  String? eventDate;
@override final  String? location;
@override final  String? imageUrl;
@override final  int? minPrice;

/// Create a copy of EventSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSearchItemDtoCopyWith<_EventSearchItemDto> get copyWith => __$EventSearchItemDtoCopyWithImpl<_EventSearchItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventSearchItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSearchItemDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,eventDate,location,imageUrl,minPrice);

@override
String toString() {
  return 'EventSearchItemDto(eventId: $eventId, title: $title, eventDate: $eventDate, location: $location, imageUrl: $imageUrl, minPrice: $minPrice)';
}


}

/// @nodoc
abstract mixin class _$EventSearchItemDtoCopyWith<$Res> implements $EventSearchItemDtoCopyWith<$Res> {
  factory _$EventSearchItemDtoCopyWith(_EventSearchItemDto value, $Res Function(_EventSearchItemDto) _then) = __$EventSearchItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String title, String? eventDate, String? location, String? imageUrl, int? minPrice
});




}
/// @nodoc
class __$EventSearchItemDtoCopyWithImpl<$Res>
    implements _$EventSearchItemDtoCopyWith<$Res> {
  __$EventSearchItemDtoCopyWithImpl(this._self, this._then);

  final _EventSearchItemDto _self;
  final $Res Function(_EventSearchItemDto) _then;

/// Create a copy of EventSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? title = null,Object? eventDate = freezed,Object? location = freezed,Object? imageUrl = freezed,Object? minPrice = freezed,}) {
  return _then(_EventSearchItemDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TicketSearchItemDto {

 int get ticketId; int get eventId; String? get eventTitle; int? get price; String? get seatInfo; String? get status;
/// Create a copy of TicketSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketSearchItemDtoCopyWith<TicketSearchItemDto> get copyWith => _$TicketSearchItemDtoCopyWithImpl<TicketSearchItemDto>(this as TicketSearchItemDto, _$identity);

  /// Serializes this TicketSearchItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketSearchItemDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,eventId,eventTitle,price,seatInfo,status);

@override
String toString() {
  return 'TicketSearchItemDto(ticketId: $ticketId, eventId: $eventId, eventTitle: $eventTitle, price: $price, seatInfo: $seatInfo, status: $status)';
}


}

/// @nodoc
abstract mixin class $TicketSearchItemDtoCopyWith<$Res>  {
  factory $TicketSearchItemDtoCopyWith(TicketSearchItemDto value, $Res Function(TicketSearchItemDto) _then) = _$TicketSearchItemDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, int eventId, String? eventTitle, int? price, String? seatInfo, String? status
});




}
/// @nodoc
class _$TicketSearchItemDtoCopyWithImpl<$Res>
    implements $TicketSearchItemDtoCopyWith<$Res> {
  _$TicketSearchItemDtoCopyWithImpl(this._self, this._then);

  final TicketSearchItemDto _self;
  final $Res Function(TicketSearchItemDto) _then;

/// Create a copy of TicketSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? eventId = null,Object? eventTitle = freezed,Object? price = freezed,Object? seatInfo = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketSearchItemDto].
extension TicketSearchItemDtoPatterns on TicketSearchItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketSearchItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketSearchItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketSearchItemDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketSearchItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketSearchItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketSearchItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  int eventId,  String? eventTitle,  int? price,  String? seatInfo,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketSearchItemDto() when $default != null:
return $default(_that.ticketId,_that.eventId,_that.eventTitle,_that.price,_that.seatInfo,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  int eventId,  String? eventTitle,  int? price,  String? seatInfo,  String? status)  $default,) {final _that = this;
switch (_that) {
case _TicketSearchItemDto():
return $default(_that.ticketId,_that.eventId,_that.eventTitle,_that.price,_that.seatInfo,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  int eventId,  String? eventTitle,  int? price,  String? seatInfo,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _TicketSearchItemDto() when $default != null:
return $default(_that.ticketId,_that.eventId,_that.eventTitle,_that.price,_that.seatInfo,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketSearchItemDto implements TicketSearchItemDto {
  const _TicketSearchItemDto({required this.ticketId, required this.eventId, this.eventTitle, this.price, this.seatInfo, this.status});
  factory _TicketSearchItemDto.fromJson(Map<String, dynamic> json) => _$TicketSearchItemDtoFromJson(json);

@override final  int ticketId;
@override final  int eventId;
@override final  String? eventTitle;
@override final  int? price;
@override final  String? seatInfo;
@override final  String? status;

/// Create a copy of TicketSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketSearchItemDtoCopyWith<_TicketSearchItemDto> get copyWith => __$TicketSearchItemDtoCopyWithImpl<_TicketSearchItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketSearchItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketSearchItemDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,eventId,eventTitle,price,seatInfo,status);

@override
String toString() {
  return 'TicketSearchItemDto(ticketId: $ticketId, eventId: $eventId, eventTitle: $eventTitle, price: $price, seatInfo: $seatInfo, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TicketSearchItemDtoCopyWith<$Res> implements $TicketSearchItemDtoCopyWith<$Res> {
  factory _$TicketSearchItemDtoCopyWith(_TicketSearchItemDto value, $Res Function(_TicketSearchItemDto) _then) = __$TicketSearchItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, int eventId, String? eventTitle, int? price, String? seatInfo, String? status
});




}
/// @nodoc
class __$TicketSearchItemDtoCopyWithImpl<$Res>
    implements _$TicketSearchItemDtoCopyWith<$Res> {
  __$TicketSearchItemDtoCopyWithImpl(this._self, this._then);

  final _TicketSearchItemDto _self;
  final $Res Function(_TicketSearchItemDto) _then;

/// Create a copy of TicketSearchItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? eventId = null,Object? eventTitle = freezed,Object? price = freezed,Object? seatInfo = freezed,Object? status = freezed,}) {
  return _then(_TicketSearchItemDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,seatInfo: freezed == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SearchResDto {

 List<EventSearchItemDto> get events; List<TicketSearchItemDto> get tickets; int get totalCount;
/// Create a copy of SearchResDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResDtoCopyWith<SearchResDto> get copyWith => _$SearchResDtoCopyWithImpl<SearchResDto>(this as SearchResDto, _$identity);

  /// Serializes this SearchResDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResDto&&const DeepCollectionEquality().equals(other.events, events)&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),const DeepCollectionEquality().hash(tickets),totalCount);

@override
String toString() {
  return 'SearchResDto(events: $events, tickets: $tickets, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $SearchResDtoCopyWith<$Res>  {
  factory $SearchResDtoCopyWith(SearchResDto value, $Res Function(SearchResDto) _then) = _$SearchResDtoCopyWithImpl;
@useResult
$Res call({
 List<EventSearchItemDto> events, List<TicketSearchItemDto> tickets, int totalCount
});




}
/// @nodoc
class _$SearchResDtoCopyWithImpl<$Res>
    implements $SearchResDtoCopyWith<$Res> {
  _$SearchResDtoCopyWithImpl(this._self, this._then);

  final SearchResDto _self;
  final $Res Function(SearchResDto) _then;

/// Create a copy of SearchResDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? tickets = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<EventSearchItemDto>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketSearchItemDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResDto].
extension SearchResDtoPatterns on SearchResDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchResDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventSearchItemDto> events,  List<TicketSearchItemDto> tickets,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResDto() when $default != null:
return $default(_that.events,_that.tickets,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventSearchItemDto> events,  List<TicketSearchItemDto> tickets,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _SearchResDto():
return $default(_that.events,_that.tickets,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventSearchItemDto> events,  List<TicketSearchItemDto> tickets,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _SearchResDto() when $default != null:
return $default(_that.events,_that.tickets,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResDto implements SearchResDto {
  const _SearchResDto({final  List<EventSearchItemDto> events = const [], final  List<TicketSearchItemDto> tickets = const [], this.totalCount = 0}): _events = events,_tickets = tickets;
  factory _SearchResDto.fromJson(Map<String, dynamic> json) => _$SearchResDtoFromJson(json);

 final  List<EventSearchItemDto> _events;
@override@JsonKey() List<EventSearchItemDto> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

 final  List<TicketSearchItemDto> _tickets;
@override@JsonKey() List<TicketSearchItemDto> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override@JsonKey() final  int totalCount;

/// Create a copy of SearchResDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResDtoCopyWith<_SearchResDto> get copyWith => __$SearchResDtoCopyWithImpl<_SearchResDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResDto&&const DeepCollectionEquality().equals(other._events, _events)&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),const DeepCollectionEquality().hash(_tickets),totalCount);

@override
String toString() {
  return 'SearchResDto(events: $events, tickets: $tickets, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$SearchResDtoCopyWith<$Res> implements $SearchResDtoCopyWith<$Res> {
  factory _$SearchResDtoCopyWith(_SearchResDto value, $Res Function(_SearchResDto) _then) = __$SearchResDtoCopyWithImpl;
@override @useResult
$Res call({
 List<EventSearchItemDto> events, List<TicketSearchItemDto> tickets, int totalCount
});




}
/// @nodoc
class __$SearchResDtoCopyWithImpl<$Res>
    implements _$SearchResDtoCopyWith<$Res> {
  __$SearchResDtoCopyWithImpl(this._self, this._then);

  final _SearchResDto _self;
  final $Res Function(_SearchResDto) _then;

/// Create a copy of SearchResDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? tickets = null,Object? totalCount = null,}) {
  return _then(_SearchResDto(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<EventSearchItemDto>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketSearchItemDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
