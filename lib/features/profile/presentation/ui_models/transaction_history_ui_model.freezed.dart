// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryUiModel {

 int get transactionId; int get ticketId; String get ticketTitle; String? get ticketThumbnailUrl; String get eventDate; String get venueName; String get seatInfo; String get price; String get state; Color get stateColor; Color? get stateTextColor; int? get roomId; String get date;
/// Create a copy of TransactionHistoryUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryUiModelCopyWith<TransactionHistoryUiModel> get copyWith => _$TransactionHistoryUiModelCopyWithImpl<TransactionHistoryUiModel>(this as TransactionHistoryUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryUiModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateColor, stateColor) || other.stateColor == stateColor)&&(identical(other.stateTextColor, stateTextColor) || other.stateTextColor == stateTextColor)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketId,ticketTitle,ticketThumbnailUrl,eventDate,venueName,seatInfo,price,state,stateColor,stateTextColor,roomId,date);

@override
String toString() {
  return 'TransactionHistoryUiModel(transactionId: $transactionId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, eventDate: $eventDate, venueName: $venueName, seatInfo: $seatInfo, price: $price, state: $state, stateColor: $stateColor, stateTextColor: $stateTextColor, roomId: $roomId, date: $date)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryUiModelCopyWith<$Res>  {
  factory $TransactionHistoryUiModelCopyWith(TransactionHistoryUiModel value, $Res Function(TransactionHistoryUiModel) _then) = _$TransactionHistoryUiModelCopyWithImpl;
@useResult
$Res call({
 int transactionId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, String eventDate, String venueName, String seatInfo, String price, String state, Color stateColor, Color? stateTextColor, int? roomId, String date
});




}
/// @nodoc
class _$TransactionHistoryUiModelCopyWithImpl<$Res>
    implements $TransactionHistoryUiModelCopyWith<$Res> {
  _$TransactionHistoryUiModelCopyWithImpl(this._self, this._then);

  final TransactionHistoryUiModel _self;
  final $Res Function(TransactionHistoryUiModel) _then;

/// Create a copy of TransactionHistoryUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? eventDate = null,Object? venueName = null,Object? seatInfo = null,Object? price = null,Object? state = null,Object? stateColor = null,Object? stateTextColor = freezed,Object? roomId = freezed,Object? date = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateColor: null == stateColor ? _self.stateColor : stateColor // ignore: cast_nullable_to_non_nullable
as Color,stateTextColor: freezed == stateTextColor ? _self.stateTextColor : stateTextColor // ignore: cast_nullable_to_non_nullable
as Color?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryUiModel].
extension TransactionHistoryUiModelPatterns on TransactionHistoryUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryUiModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  String eventDate,  String venueName,  String seatInfo,  String price,  String state,  Color stateColor,  Color? stateTextColor,  int? roomId,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryUiModel() when $default != null:
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDate,_that.venueName,_that.seatInfo,_that.price,_that.state,_that.stateColor,_that.stateTextColor,_that.roomId,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  String eventDate,  String venueName,  String seatInfo,  String price,  String state,  Color stateColor,  Color? stateTextColor,  int? roomId,  String date)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryUiModel():
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDate,_that.venueName,_that.seatInfo,_that.price,_that.state,_that.stateColor,_that.stateTextColor,_that.roomId,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int transactionId,  int ticketId,  String ticketTitle,  String? ticketThumbnailUrl,  String eventDate,  String venueName,  String seatInfo,  String price,  String state,  Color stateColor,  Color? stateTextColor,  int? roomId,  String date)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryUiModel() when $default != null:
return $default(_that.transactionId,_that.ticketId,_that.ticketTitle,_that.ticketThumbnailUrl,_that.eventDate,_that.venueName,_that.seatInfo,_that.price,_that.state,_that.stateColor,_that.stateTextColor,_that.roomId,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistoryUiModel implements TransactionHistoryUiModel {
  const _TransactionHistoryUiModel({required this.transactionId, required this.ticketId, required this.ticketTitle, this.ticketThumbnailUrl, required this.eventDate, required this.venueName, required this.seatInfo, required this.price, required this.state, required this.stateColor, this.stateTextColor, this.roomId, required this.date});
  

@override final  int transactionId;
@override final  int ticketId;
@override final  String ticketTitle;
@override final  String? ticketThumbnailUrl;
@override final  String eventDate;
@override final  String venueName;
@override final  String seatInfo;
@override final  String price;
@override final  String state;
@override final  Color stateColor;
@override final  Color? stateTextColor;
@override final  int? roomId;
@override final  String date;

/// Create a copy of TransactionHistoryUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryUiModelCopyWith<_TransactionHistoryUiModel> get copyWith => __$TransactionHistoryUiModelCopyWithImpl<_TransactionHistoryUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryUiModel&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.ticketTitle, ticketTitle) || other.ticketTitle == ticketTitle)&&(identical(other.ticketThumbnailUrl, ticketThumbnailUrl) || other.ticketThumbnailUrl == ticketThumbnailUrl)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.price, price) || other.price == price)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateColor, stateColor) || other.stateColor == stateColor)&&(identical(other.stateTextColor, stateTextColor) || other.stateTextColor == stateTextColor)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,ticketId,ticketTitle,ticketThumbnailUrl,eventDate,venueName,seatInfo,price,state,stateColor,stateTextColor,roomId,date);

@override
String toString() {
  return 'TransactionHistoryUiModel(transactionId: $transactionId, ticketId: $ticketId, ticketTitle: $ticketTitle, ticketThumbnailUrl: $ticketThumbnailUrl, eventDate: $eventDate, venueName: $venueName, seatInfo: $seatInfo, price: $price, state: $state, stateColor: $stateColor, stateTextColor: $stateTextColor, roomId: $roomId, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryUiModelCopyWith<$Res> implements $TransactionHistoryUiModelCopyWith<$Res> {
  factory _$TransactionHistoryUiModelCopyWith(_TransactionHistoryUiModel value, $Res Function(_TransactionHistoryUiModel) _then) = __$TransactionHistoryUiModelCopyWithImpl;
@override @useResult
$Res call({
 int transactionId, int ticketId, String ticketTitle, String? ticketThumbnailUrl, String eventDate, String venueName, String seatInfo, String price, String state, Color stateColor, Color? stateTextColor, int? roomId, String date
});




}
/// @nodoc
class __$TransactionHistoryUiModelCopyWithImpl<$Res>
    implements _$TransactionHistoryUiModelCopyWith<$Res> {
  __$TransactionHistoryUiModelCopyWithImpl(this._self, this._then);

  final _TransactionHistoryUiModel _self;
  final $Res Function(_TransactionHistoryUiModel) _then;

/// Create a copy of TransactionHistoryUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? ticketId = null,Object? ticketTitle = null,Object? ticketThumbnailUrl = freezed,Object? eventDate = null,Object? venueName = null,Object? seatInfo = null,Object? price = null,Object? state = null,Object? stateColor = null,Object? stateTextColor = freezed,Object? roomId = freezed,Object? date = null,}) {
  return _then(_TransactionHistoryUiModel(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,ticketTitle: null == ticketTitle ? _self.ticketTitle : ticketTitle // ignore: cast_nullable_to_non_nullable
as String,ticketThumbnailUrl: freezed == ticketThumbnailUrl ? _self.ticketThumbnailUrl : ticketThumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,eventDate: null == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateColor: null == stateColor ? _self.stateColor : stateColor // ignore: cast_nullable_to_non_nullable
as Color,stateTextColor: freezed == stateTextColor ? _self.stateTextColor : stateTextColor // ignore: cast_nullable_to_non_nullable
as Color?,roomId: freezed == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
