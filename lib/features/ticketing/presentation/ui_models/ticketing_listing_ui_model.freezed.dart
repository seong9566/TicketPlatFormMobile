// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_listing_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingListingUiModel {

 String get title; String get imageUrl; DateTime get eventDate; String get location; bool get isHot; List<TicketingTicketGradeInfo> get ticketGrades; List<TicketingCommonUiModel> get tickets; String get sortBy;
/// Create a copy of TicketingListingUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingListingUiModelCopyWith<TicketingListingUiModel> get copyWith => _$TicketingListingUiModelCopyWithImpl<TicketingListingUiModel>(this as TicketingListingUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingListingUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&const DeepCollectionEquality().equals(other.ticketGrades, ticketGrades)&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,eventDate,location,isHot,const DeepCollectionEquality().hash(ticketGrades),const DeepCollectionEquality().hash(tickets),sortBy);

@override
String toString() {
  return 'TicketingListingUiModel(title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, isHot: $isHot, ticketGrades: $ticketGrades, tickets: $tickets, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $TicketingListingUiModelCopyWith<$Res>  {
  factory $TicketingListingUiModelCopyWith(TicketingListingUiModel value, $Res Function(TicketingListingUiModel) _then) = _$TicketingListingUiModelCopyWithImpl;
@useResult
$Res call({
 String title, String imageUrl, DateTime eventDate, String location, bool isHot, List<TicketingTicketGradeInfo> ticketGrades, List<TicketingCommonUiModel> tickets, String sortBy
});




}
/// @nodoc
class _$TicketingListingUiModelCopyWithImpl<$Res>
    implements $TicketingListingUiModelCopyWith<$Res> {
  _$TicketingListingUiModelCopyWithImpl(this._self, this._then);

  final TicketingListingUiModel _self;
  final $Res Function(TicketingListingUiModel) _then;

/// Create a copy of TicketingListingUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? isHot = null,Object? ticketGrades = null,Object? tickets = null,Object? sortBy = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,ticketGrades: null == ticketGrades ? _self.ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketGradeInfo>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingCommonUiModel>,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingListingUiModel].
extension TicketingListingUiModelPatterns on TicketingListingUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingListingUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingListingUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingListingUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingListingUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingListingUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingListingUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingTicketGradeInfo> ticketGrades,  List<TicketingCommonUiModel> tickets,  String sortBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingListingUiModel() when $default != null:
return $default(_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.isHot,_that.ticketGrades,_that.tickets,_that.sortBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingTicketGradeInfo> ticketGrades,  List<TicketingCommonUiModel> tickets,  String sortBy)  $default,) {final _that = this;
switch (_that) {
case _TicketingListingUiModel():
return $default(_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.isHot,_that.ticketGrades,_that.tickets,_that.sortBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingTicketGradeInfo> ticketGrades,  List<TicketingCommonUiModel> tickets,  String sortBy)?  $default,) {final _that = this;
switch (_that) {
case _TicketingListingUiModel() when $default != null:
return $default(_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.isHot,_that.ticketGrades,_that.tickets,_that.sortBy);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingListingUiModel implements TicketingListingUiModel {
  const _TicketingListingUiModel({required this.title, required this.imageUrl, required this.eventDate, required this.location, required this.isHot, required final  List<TicketingTicketGradeInfo> ticketGrades, required final  List<TicketingCommonUiModel> tickets, this.sortBy = '가격 낮은순'}): _ticketGrades = ticketGrades,_tickets = tickets;
  

@override final  String title;
@override final  String imageUrl;
@override final  DateTime eventDate;
@override final  String location;
@override final  bool isHot;
 final  List<TicketingTicketGradeInfo> _ticketGrades;
@override List<TicketingTicketGradeInfo> get ticketGrades {
  if (_ticketGrades is EqualUnmodifiableListView) return _ticketGrades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketGrades);
}

 final  List<TicketingCommonUiModel> _tickets;
@override List<TicketingCommonUiModel> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override@JsonKey() final  String sortBy;

/// Create a copy of TicketingListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingListingUiModelCopyWith<_TicketingListingUiModel> get copyWith => __$TicketingListingUiModelCopyWithImpl<_TicketingListingUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingListingUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&const DeepCollectionEquality().equals(other._ticketGrades, _ticketGrades)&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,eventDate,location,isHot,const DeepCollectionEquality().hash(_ticketGrades),const DeepCollectionEquality().hash(_tickets),sortBy);

@override
String toString() {
  return 'TicketingListingUiModel(title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, isHot: $isHot, ticketGrades: $ticketGrades, tickets: $tickets, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class _$TicketingListingUiModelCopyWith<$Res> implements $TicketingListingUiModelCopyWith<$Res> {
  factory _$TicketingListingUiModelCopyWith(_TicketingListingUiModel value, $Res Function(_TicketingListingUiModel) _then) = __$TicketingListingUiModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String imageUrl, DateTime eventDate, String location, bool isHot, List<TicketingTicketGradeInfo> ticketGrades, List<TicketingCommonUiModel> tickets, String sortBy
});




}
/// @nodoc
class __$TicketingListingUiModelCopyWithImpl<$Res>
    implements _$TicketingListingUiModelCopyWith<$Res> {
  __$TicketingListingUiModelCopyWithImpl(this._self, this._then);

  final _TicketingListingUiModel _self;
  final $Res Function(_TicketingListingUiModel) _then;

/// Create a copy of TicketingListingUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? isHot = null,Object? ticketGrades = null,Object? tickets = null,Object? sortBy = null,}) {
  return _then(_TicketingListingUiModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,ticketGrades: null == ticketGrades ? _self._ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketGradeInfo>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingCommonUiModel>,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TicketingTicketGradeInfo {

 String get id; String get name; int get count;
/// Create a copy of TicketingTicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingTicketGradeInfoCopyWith<TicketingTicketGradeInfo> get copyWith => _$TicketingTicketGradeInfoCopyWithImpl<TicketingTicketGradeInfo>(this as TicketingTicketGradeInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingTicketGradeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketingTicketGradeInfo(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class $TicketingTicketGradeInfoCopyWith<$Res>  {
  factory $TicketingTicketGradeInfoCopyWith(TicketingTicketGradeInfo value, $Res Function(TicketingTicketGradeInfo) _then) = _$TicketingTicketGradeInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class _$TicketingTicketGradeInfoCopyWithImpl<$Res>
    implements $TicketingTicketGradeInfoCopyWith<$Res> {
  _$TicketingTicketGradeInfoCopyWithImpl(this._self, this._then);

  final TicketingTicketGradeInfo _self;
  final $Res Function(TicketingTicketGradeInfo) _then;

/// Create a copy of TicketingTicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? count = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingTicketGradeInfo].
extension TicketingTicketGradeInfoPatterns on TicketingTicketGradeInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingTicketGradeInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingTicketGradeInfo value)  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingTicketGradeInfo value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int count)  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo():
return $default(_that.id,_that.name,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int count)?  $default,) {final _that = this;
switch (_that) {
case _TicketingTicketGradeInfo() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingTicketGradeInfo implements TicketingTicketGradeInfo {
  const _TicketingTicketGradeInfo({required this.id, required this.name, required this.count});
  

@override final  String id;
@override final  String name;
@override final  int count;

/// Create a copy of TicketingTicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingTicketGradeInfoCopyWith<_TicketingTicketGradeInfo> get copyWith => __$TicketingTicketGradeInfoCopyWithImpl<_TicketingTicketGradeInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingTicketGradeInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketingTicketGradeInfo(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class _$TicketingTicketGradeInfoCopyWith<$Res> implements $TicketingTicketGradeInfoCopyWith<$Res> {
  factory _$TicketingTicketGradeInfoCopyWith(_TicketingTicketGradeInfo value, $Res Function(_TicketingTicketGradeInfo) _then) = __$TicketingTicketGradeInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class __$TicketingTicketGradeInfoCopyWithImpl<$Res>
    implements _$TicketingTicketGradeInfoCopyWith<$Res> {
  __$TicketingTicketGradeInfoCopyWithImpl(this._self, this._then);

  final _TicketingTicketGradeInfo _self;
  final $Res Function(_TicketingTicketGradeInfo) _then;

/// Create a copy of TicketingTicketGradeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,}) {
  return _then(_TicketingTicketGradeInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
