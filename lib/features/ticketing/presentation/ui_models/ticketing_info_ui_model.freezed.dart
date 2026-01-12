// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_info_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingInfoUiModel {

 String get title; String get imageUrl; DateTime get eventDate; String get location; bool get isHot; List<TicketingGradeUiModel> get ticketGrades; List<TicketingTicketUiModel> get tickets; String get sortBy;
/// Create a copy of TicketingInfoUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingInfoUiModelCopyWith<TicketingInfoUiModel> get copyWith => _$TicketingInfoUiModelCopyWithImpl<TicketingInfoUiModel>(this as TicketingInfoUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingInfoUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&const DeepCollectionEquality().equals(other.ticketGrades, ticketGrades)&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,eventDate,location,isHot,const DeepCollectionEquality().hash(ticketGrades),const DeepCollectionEquality().hash(tickets),sortBy);

@override
String toString() {
  return 'TicketingInfoUiModel(title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, isHot: $isHot, ticketGrades: $ticketGrades, tickets: $tickets, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class $TicketingInfoUiModelCopyWith<$Res>  {
  factory $TicketingInfoUiModelCopyWith(TicketingInfoUiModel value, $Res Function(TicketingInfoUiModel) _then) = _$TicketingInfoUiModelCopyWithImpl;
@useResult
$Res call({
 String title, String imageUrl, DateTime eventDate, String location, bool isHot, List<TicketingGradeUiModel> ticketGrades, List<TicketingTicketUiModel> tickets, String sortBy
});




}
/// @nodoc
class _$TicketingInfoUiModelCopyWithImpl<$Res>
    implements $TicketingInfoUiModelCopyWith<$Res> {
  _$TicketingInfoUiModelCopyWithImpl(this._self, this._then);

  final TicketingInfoUiModel _self;
  final $Res Function(TicketingInfoUiModel) _then;

/// Create a copy of TicketingInfoUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? isHot = null,Object? ticketGrades = null,Object? tickets = null,Object? sortBy = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,ticketGrades: null == ticketGrades ? _self.ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketingGradeUiModel>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketUiModel>,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketingInfoUiModel].
extension TicketingInfoUiModelPatterns on TicketingInfoUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingInfoUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingInfoUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingInfoUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingInfoUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingInfoUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingInfoUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingGradeUiModel> ticketGrades,  List<TicketingTicketUiModel> tickets,  String sortBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingInfoUiModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingGradeUiModel> ticketGrades,  List<TicketingTicketUiModel> tickets,  String sortBy)  $default,) {final _that = this;
switch (_that) {
case _TicketingInfoUiModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String imageUrl,  DateTime eventDate,  String location,  bool isHot,  List<TicketingGradeUiModel> ticketGrades,  List<TicketingTicketUiModel> tickets,  String sortBy)?  $default,) {final _that = this;
switch (_that) {
case _TicketingInfoUiModel() when $default != null:
return $default(_that.title,_that.imageUrl,_that.eventDate,_that.location,_that.isHot,_that.ticketGrades,_that.tickets,_that.sortBy);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingInfoUiModel implements TicketingInfoUiModel {
  const _TicketingInfoUiModel({required this.title, required this.imageUrl, required this.eventDate, required this.location, required this.isHot, required final  List<TicketingGradeUiModel> ticketGrades, required final  List<TicketingTicketUiModel> tickets, this.sortBy = '가격 낮은순'}): _ticketGrades = ticketGrades,_tickets = tickets;
  

@override final  String title;
@override final  String imageUrl;
@override final  DateTime eventDate;
@override final  String location;
@override final  bool isHot;
 final  List<TicketingGradeUiModel> _ticketGrades;
@override List<TicketingGradeUiModel> get ticketGrades {
  if (_ticketGrades is EqualUnmodifiableListView) return _ticketGrades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketGrades);
}

 final  List<TicketingTicketUiModel> _tickets;
@override List<TicketingTicketUiModel> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override@JsonKey() final  String sortBy;

/// Create a copy of TicketingInfoUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingInfoUiModelCopyWith<_TicketingInfoUiModel> get copyWith => __$TicketingInfoUiModelCopyWithImpl<_TicketingInfoUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingInfoUiModel&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&const DeepCollectionEquality().equals(other._ticketGrades, _ticketGrades)&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy));
}


@override
int get hashCode => Object.hash(runtimeType,title,imageUrl,eventDate,location,isHot,const DeepCollectionEquality().hash(_ticketGrades),const DeepCollectionEquality().hash(_tickets),sortBy);

@override
String toString() {
  return 'TicketingInfoUiModel(title: $title, imageUrl: $imageUrl, eventDate: $eventDate, location: $location, isHot: $isHot, ticketGrades: $ticketGrades, tickets: $tickets, sortBy: $sortBy)';
}


}

/// @nodoc
abstract mixin class _$TicketingInfoUiModelCopyWith<$Res> implements $TicketingInfoUiModelCopyWith<$Res> {
  factory _$TicketingInfoUiModelCopyWith(_TicketingInfoUiModel value, $Res Function(_TicketingInfoUiModel) _then) = __$TicketingInfoUiModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String imageUrl, DateTime eventDate, String location, bool isHot, List<TicketingGradeUiModel> ticketGrades, List<TicketingTicketUiModel> tickets, String sortBy
});




}
/// @nodoc
class __$TicketingInfoUiModelCopyWithImpl<$Res>
    implements _$TicketingInfoUiModelCopyWith<$Res> {
  __$TicketingInfoUiModelCopyWithImpl(this._self, this._then);

  final _TicketingInfoUiModel _self;
  final $Res Function(_TicketingInfoUiModel) _then;

/// Create a copy of TicketingInfoUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? imageUrl = null,Object? eventDate = null,Object? location = null,Object? isHot = null,Object? ticketGrades = null,Object? tickets = null,Object? sortBy = null,}) {
  return _then(_TicketingInfoUiModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,ticketGrades: null == ticketGrades ? _self._ticketGrades : ticketGrades // ignore: cast_nullable_to_non_nullable
as List<TicketingGradeUiModel>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketingTicketUiModel>,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TicketingGradeUiModel {

 String get id; String get name; int get count;
/// Create a copy of TicketingGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingGradeUiModelCopyWith<TicketingGradeUiModel> get copyWith => _$TicketingGradeUiModelCopyWithImpl<TicketingGradeUiModel>(this as TicketingGradeUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingGradeUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketingGradeUiModel(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class $TicketingGradeUiModelCopyWith<$Res>  {
  factory $TicketingGradeUiModelCopyWith(TicketingGradeUiModel value, $Res Function(TicketingGradeUiModel) _then) = _$TicketingGradeUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class _$TicketingGradeUiModelCopyWithImpl<$Res>
    implements $TicketingGradeUiModelCopyWith<$Res> {
  _$TicketingGradeUiModelCopyWithImpl(this._self, this._then);

  final TicketingGradeUiModel _self;
  final $Res Function(TicketingGradeUiModel) _then;

/// Create a copy of TicketingGradeUiModel
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


/// Adds pattern-matching-related methods to [TicketingGradeUiModel].
extension TicketingGradeUiModelPatterns on TicketingGradeUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingGradeUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingGradeUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingGradeUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketingGradeUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingGradeUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingGradeUiModel() when $default != null:
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
case _TicketingGradeUiModel() when $default != null:
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
case _TicketingGradeUiModel():
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
case _TicketingGradeUiModel() when $default != null:
return $default(_that.id,_that.name,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingGradeUiModel implements TicketingGradeUiModel {
  const _TicketingGradeUiModel({required this.id, required this.name, required this.count});
  

@override final  String id;
@override final  String name;
@override final  int count;

/// Create a copy of TicketingGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingGradeUiModelCopyWith<_TicketingGradeUiModel> get copyWith => __$TicketingGradeUiModelCopyWithImpl<_TicketingGradeUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingGradeUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,count);

@override
String toString() {
  return 'TicketingGradeUiModel(id: $id, name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class _$TicketingGradeUiModelCopyWith<$Res> implements $TicketingGradeUiModelCopyWith<$Res> {
  factory _$TicketingGradeUiModelCopyWith(_TicketingGradeUiModel value, $Res Function(_TicketingGradeUiModel) _then) = __$TicketingGradeUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int count
});




}
/// @nodoc
class __$TicketingGradeUiModelCopyWithImpl<$Res>
    implements _$TicketingGradeUiModelCopyWith<$Res> {
  __$TicketingGradeUiModelCopyWithImpl(this._self, this._then);

  final _TicketingGradeUiModel _self;
  final $Res Function(_TicketingGradeUiModel) _then;

/// Create a copy of TicketingGradeUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? count = null,}) {
  return _then(_TicketingGradeUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
