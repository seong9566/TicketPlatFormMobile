// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_event_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellEventUiModel {

 int get eventId; String get title; String? get posterImageUrl; String get venueName; String get dateText; DateTime get startAt; DateTime get endAt;
/// Create a copy of SellEventUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellEventUiModelCopyWith<SellEventUiModel> get copyWith => _$SellEventUiModelCopyWithImpl<SellEventUiModel>(this as SellEventUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellEventUiModel&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.dateText, dateText) || other.dateText == dateText)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,dateText,startAt,endAt);

@override
String toString() {
  return 'SellEventUiModel(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, dateText: $dateText, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class $SellEventUiModelCopyWith<$Res>  {
  factory $SellEventUiModelCopyWith(SellEventUiModel value, $Res Function(SellEventUiModel) _then) = _$SellEventUiModelCopyWithImpl;
@useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, String dateText, DateTime startAt, DateTime endAt
});




}
/// @nodoc
class _$SellEventUiModelCopyWithImpl<$Res>
    implements $SellEventUiModelCopyWith<$Res> {
  _$SellEventUiModelCopyWithImpl(this._self, this._then);

  final SellEventUiModel _self;
  final $Res Function(SellEventUiModel) _then;

/// Create a copy of SellEventUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? dateText = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,dateText: null == dateText ? _self.dateText : dateText // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SellEventUiModel].
extension SellEventUiModelPatterns on SellEventUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellEventUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellEventUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellEventUiModel value)  $default,){
final _that = this;
switch (_that) {
case _SellEventUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellEventUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellEventUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String dateText,  DateTime startAt,  DateTime endAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellEventUiModel() when $default != null:
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.dateText,_that.startAt,_that.endAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String dateText,  DateTime startAt,  DateTime endAt)  $default,) {final _that = this;
switch (_that) {
case _SellEventUiModel():
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.dateText,_that.startAt,_that.endAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int eventId,  String title,  String? posterImageUrl,  String venueName,  String dateText,  DateTime startAt,  DateTime endAt)?  $default,) {final _that = this;
switch (_that) {
case _SellEventUiModel() when $default != null:
return $default(_that.eventId,_that.title,_that.posterImageUrl,_that.venueName,_that.dateText,_that.startAt,_that.endAt);case _:
  return null;

}
}

}

/// @nodoc


class _SellEventUiModel implements SellEventUiModel {
  const _SellEventUiModel({required this.eventId, required this.title, this.posterImageUrl, required this.venueName, required this.dateText, required this.startAt, required this.endAt});
  

@override final  int eventId;
@override final  String title;
@override final  String? posterImageUrl;
@override final  String venueName;
@override final  String dateText;
@override final  DateTime startAt;
@override final  DateTime endAt;

/// Create a copy of SellEventUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellEventUiModelCopyWith<_SellEventUiModel> get copyWith => __$SellEventUiModelCopyWithImpl<_SellEventUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellEventUiModel&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterImageUrl, posterImageUrl) || other.posterImageUrl == posterImageUrl)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.dateText, dateText) || other.dateText == dateText)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.endAt, endAt) || other.endAt == endAt));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,title,posterImageUrl,venueName,dateText,startAt,endAt);

@override
String toString() {
  return 'SellEventUiModel(eventId: $eventId, title: $title, posterImageUrl: $posterImageUrl, venueName: $venueName, dateText: $dateText, startAt: $startAt, endAt: $endAt)';
}


}

/// @nodoc
abstract mixin class _$SellEventUiModelCopyWith<$Res> implements $SellEventUiModelCopyWith<$Res> {
  factory _$SellEventUiModelCopyWith(_SellEventUiModel value, $Res Function(_SellEventUiModel) _then) = __$SellEventUiModelCopyWithImpl;
@override @useResult
$Res call({
 int eventId, String title, String? posterImageUrl, String venueName, String dateText, DateTime startAt, DateTime endAt
});




}
/// @nodoc
class __$SellEventUiModelCopyWithImpl<$Res>
    implements _$SellEventUiModelCopyWith<$Res> {
  __$SellEventUiModelCopyWithImpl(this._self, this._then);

  final _SellEventUiModel _self;
  final $Res Function(_SellEventUiModel) _then;

/// Create a copy of SellEventUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? title = null,Object? posterImageUrl = freezed,Object? venueName = null,Object? dateText = null,Object? startAt = null,Object? endAt = null,}) {
  return _then(_SellEventUiModel(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterImageUrl: freezed == posterImageUrl ? _self.posterImageUrl : posterImageUrl // ignore: cast_nullable_to_non_nullable
as String?,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,dateText: null == dateText ? _self.dateText : dateText // ignore: cast_nullable_to_non_nullable
as String,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,endAt: null == endAt ? _self.endAt : endAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
