// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performance_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PerformanceUiModel {

 String get id; String get title; String get date; String get location; String get imageUrl; int get ticketCount; bool get isSoldOut; bool get isHot;// For "마감 임박"
 String? get dDay;
/// Create a copy of PerformanceUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerformanceUiModelCopyWith<PerformanceUiModel> get copyWith => _$PerformanceUiModelCopyWithImpl<PerformanceUiModel>(this as PerformanceUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerformanceUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.dDay, dDay) || other.dDay == dDay));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,date,location,imageUrl,ticketCount,isSoldOut,isHot,dDay);

@override
String toString() {
  return 'PerformanceUiModel(id: $id, title: $title, date: $date, location: $location, imageUrl: $imageUrl, ticketCount: $ticketCount, isSoldOut: $isSoldOut, isHot: $isHot, dDay: $dDay)';
}


}

/// @nodoc
abstract mixin class $PerformanceUiModelCopyWith<$Res>  {
  factory $PerformanceUiModelCopyWith(PerformanceUiModel value, $Res Function(PerformanceUiModel) _then) = _$PerformanceUiModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String date, String location, String imageUrl, int ticketCount, bool isSoldOut, bool isHot, String? dDay
});




}
/// @nodoc
class _$PerformanceUiModelCopyWithImpl<$Res>
    implements $PerformanceUiModelCopyWith<$Res> {
  _$PerformanceUiModelCopyWithImpl(this._self, this._then);

  final PerformanceUiModel _self;
  final $Res Function(PerformanceUiModel) _then;

/// Create a copy of PerformanceUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? date = null,Object? location = null,Object? imageUrl = null,Object? ticketCount = null,Object? isSoldOut = null,Object? isHot = null,Object? dDay = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,dDay: freezed == dDay ? _self.dDay : dDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PerformanceUiModel].
extension PerformanceUiModelPatterns on PerformanceUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerformanceUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerformanceUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerformanceUiModel value)  $default,){
final _that = this;
switch (_that) {
case _PerformanceUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerformanceUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _PerformanceUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String date,  String location,  String imageUrl,  int ticketCount,  bool isSoldOut,  bool isHot,  String? dDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerformanceUiModel() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.location,_that.imageUrl,_that.ticketCount,_that.isSoldOut,_that.isHot,_that.dDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String date,  String location,  String imageUrl,  int ticketCount,  bool isSoldOut,  bool isHot,  String? dDay)  $default,) {final _that = this;
switch (_that) {
case _PerformanceUiModel():
return $default(_that.id,_that.title,_that.date,_that.location,_that.imageUrl,_that.ticketCount,_that.isSoldOut,_that.isHot,_that.dDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String date,  String location,  String imageUrl,  int ticketCount,  bool isSoldOut,  bool isHot,  String? dDay)?  $default,) {final _that = this;
switch (_that) {
case _PerformanceUiModel() when $default != null:
return $default(_that.id,_that.title,_that.date,_that.location,_that.imageUrl,_that.ticketCount,_that.isSoldOut,_that.isHot,_that.dDay);case _:
  return null;

}
}

}

/// @nodoc


class _PerformanceUiModel implements PerformanceUiModel {
  const _PerformanceUiModel({required this.id, required this.title, required this.date, required this.location, required this.imageUrl, required this.ticketCount, required this.isSoldOut, required this.isHot, this.dDay});
  

@override final  String id;
@override final  String title;
@override final  String date;
@override final  String location;
@override final  String imageUrl;
@override final  int ticketCount;
@override final  bool isSoldOut;
@override final  bool isHot;
// For "마감 임박"
@override final  String? dDay;

/// Create a copy of PerformanceUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformanceUiModelCopyWith<_PerformanceUiModel> get copyWith => __$PerformanceUiModelCopyWithImpl<_PerformanceUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformanceUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.date, date) || other.date == date)&&(identical(other.location, location) || other.location == location)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.dDay, dDay) || other.dDay == dDay));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,date,location,imageUrl,ticketCount,isSoldOut,isHot,dDay);

@override
String toString() {
  return 'PerformanceUiModel(id: $id, title: $title, date: $date, location: $location, imageUrl: $imageUrl, ticketCount: $ticketCount, isSoldOut: $isSoldOut, isHot: $isHot, dDay: $dDay)';
}


}

/// @nodoc
abstract mixin class _$PerformanceUiModelCopyWith<$Res> implements $PerformanceUiModelCopyWith<$Res> {
  factory _$PerformanceUiModelCopyWith(_PerformanceUiModel value, $Res Function(_PerformanceUiModel) _then) = __$PerformanceUiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String date, String location, String imageUrl, int ticketCount, bool isSoldOut, bool isHot, String? dDay
});




}
/// @nodoc
class __$PerformanceUiModelCopyWithImpl<$Res>
    implements _$PerformanceUiModelCopyWith<$Res> {
  __$PerformanceUiModelCopyWithImpl(this._self, this._then);

  final _PerformanceUiModel _self;
  final $Res Function(_PerformanceUiModel) _then;

/// Create a copy of PerformanceUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? date = null,Object? location = null,Object? imageUrl = null,Object? ticketCount = null,Object? isSoldOut = null,Object? isHot = null,Object? dDay = freezed,}) {
  return _then(_PerformanceUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,ticketCount: null == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,dDay: freezed == dDay ? _self.dDay : dDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
