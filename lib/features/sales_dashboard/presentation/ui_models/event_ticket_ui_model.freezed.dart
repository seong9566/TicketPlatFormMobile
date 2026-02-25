// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_ticket_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventTicketUiModel {

 int get ticketId; String get seatInfo; String get priceText; String get originalPriceText; String get quantityText; String get statusText; Color get statusColor; Color? get statusTextColor; int? get transactionId; String? get thumbnailUrl; String get dateText; String get totalSalesAmountText; bool get showVerificationGuide;
/// Create a copy of EventTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTicketUiModelCopyWith<EventTicketUiModel> get copyWith => _$EventTicketUiModelCopyWithImpl<EventTicketUiModel>(this as EventTicketUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.priceText, priceText) || other.priceText == priceText)&&(identical(other.originalPriceText, originalPriceText) || other.originalPriceText == originalPriceText)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.statusColor, statusColor) || other.statusColor == statusColor)&&(identical(other.statusTextColor, statusTextColor) || other.statusTextColor == statusTextColor)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.dateText, dateText) || other.dateText == dateText)&&(identical(other.totalSalesAmountText, totalSalesAmountText) || other.totalSalesAmountText == totalSalesAmountText)&&(identical(other.showVerificationGuide, showVerificationGuide) || other.showVerificationGuide == showVerificationGuide));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,seatInfo,priceText,originalPriceText,quantityText,statusText,statusColor,statusTextColor,transactionId,thumbnailUrl,dateText,totalSalesAmountText,showVerificationGuide);

@override
String toString() {
  return 'EventTicketUiModel(ticketId: $ticketId, seatInfo: $seatInfo, priceText: $priceText, originalPriceText: $originalPriceText, quantityText: $quantityText, statusText: $statusText, statusColor: $statusColor, statusTextColor: $statusTextColor, transactionId: $transactionId, thumbnailUrl: $thumbnailUrl, dateText: $dateText, totalSalesAmountText: $totalSalesAmountText, showVerificationGuide: $showVerificationGuide)';
}


}

/// @nodoc
abstract mixin class $EventTicketUiModelCopyWith<$Res>  {
  factory $EventTicketUiModelCopyWith(EventTicketUiModel value, $Res Function(EventTicketUiModel) _then) = _$EventTicketUiModelCopyWithImpl;
@useResult
$Res call({
 int ticketId, String seatInfo, String priceText, String originalPriceText, String quantityText, String statusText, Color statusColor, Color? statusTextColor, int? transactionId, String? thumbnailUrl, String dateText, String totalSalesAmountText, bool showVerificationGuide
});




}
/// @nodoc
class _$EventTicketUiModelCopyWithImpl<$Res>
    implements $EventTicketUiModelCopyWith<$Res> {
  _$EventTicketUiModelCopyWithImpl(this._self, this._then);

  final EventTicketUiModel _self;
  final $Res Function(EventTicketUiModel) _then;

/// Create a copy of EventTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? seatInfo = null,Object? priceText = null,Object? originalPriceText = null,Object? quantityText = null,Object? statusText = null,Object? statusColor = null,Object? statusTextColor = freezed,Object? transactionId = freezed,Object? thumbnailUrl = freezed,Object? dateText = null,Object? totalSalesAmountText = null,Object? showVerificationGuide = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,priceText: null == priceText ? _self.priceText : priceText // ignore: cast_nullable_to_non_nullable
as String,originalPriceText: null == originalPriceText ? _self.originalPriceText : originalPriceText // ignore: cast_nullable_to_non_nullable
as String,quantityText: null == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,statusColor: null == statusColor ? _self.statusColor : statusColor // ignore: cast_nullable_to_non_nullable
as Color,statusTextColor: freezed == statusTextColor ? _self.statusTextColor : statusTextColor // ignore: cast_nullable_to_non_nullable
as Color?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,dateText: null == dateText ? _self.dateText : dateText // ignore: cast_nullable_to_non_nullable
as String,totalSalesAmountText: null == totalSalesAmountText ? _self.totalSalesAmountText : totalSalesAmountText // ignore: cast_nullable_to_non_nullable
as String,showVerificationGuide: null == showVerificationGuide ? _self.showVerificationGuide : showVerificationGuide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventTicketUiModel].
extension EventTicketUiModelPatterns on EventTicketUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTicketUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTicketUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTicketUiModel value)  $default,){
final _that = this;
switch (_that) {
case _EventTicketUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTicketUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventTicketUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String seatInfo,  String priceText,  String originalPriceText,  String quantityText,  String statusText,  Color statusColor,  Color? statusTextColor,  int? transactionId,  String? thumbnailUrl,  String dateText,  String totalSalesAmountText,  bool showVerificationGuide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.seatInfo,_that.priceText,_that.originalPriceText,_that.quantityText,_that.statusText,_that.statusColor,_that.statusTextColor,_that.transactionId,_that.thumbnailUrl,_that.dateText,_that.totalSalesAmountText,_that.showVerificationGuide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String seatInfo,  String priceText,  String originalPriceText,  String quantityText,  String statusText,  Color statusColor,  Color? statusTextColor,  int? transactionId,  String? thumbnailUrl,  String dateText,  String totalSalesAmountText,  bool showVerificationGuide)  $default,) {final _that = this;
switch (_that) {
case _EventTicketUiModel():
return $default(_that.ticketId,_that.seatInfo,_that.priceText,_that.originalPriceText,_that.quantityText,_that.statusText,_that.statusColor,_that.statusTextColor,_that.transactionId,_that.thumbnailUrl,_that.dateText,_that.totalSalesAmountText,_that.showVerificationGuide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String seatInfo,  String priceText,  String originalPriceText,  String quantityText,  String statusText,  Color statusColor,  Color? statusTextColor,  int? transactionId,  String? thumbnailUrl,  String dateText,  String totalSalesAmountText,  bool showVerificationGuide)?  $default,) {final _that = this;
switch (_that) {
case _EventTicketUiModel() when $default != null:
return $default(_that.ticketId,_that.seatInfo,_that.priceText,_that.originalPriceText,_that.quantityText,_that.statusText,_that.statusColor,_that.statusTextColor,_that.transactionId,_that.thumbnailUrl,_that.dateText,_that.totalSalesAmountText,_that.showVerificationGuide);case _:
  return null;

}
}

}

/// @nodoc


class _EventTicketUiModel implements EventTicketUiModel {
  const _EventTicketUiModel({required this.ticketId, required this.seatInfo, required this.priceText, required this.originalPriceText, required this.quantityText, required this.statusText, required this.statusColor, this.statusTextColor, this.transactionId, this.thumbnailUrl, required this.dateText, required this.totalSalesAmountText, this.showVerificationGuide = false});
  

@override final  int ticketId;
@override final  String seatInfo;
@override final  String priceText;
@override final  String originalPriceText;
@override final  String quantityText;
@override final  String statusText;
@override final  Color statusColor;
@override final  Color? statusTextColor;
@override final  int? transactionId;
@override final  String? thumbnailUrl;
@override final  String dateText;
@override final  String totalSalesAmountText;
@override@JsonKey() final  bool showVerificationGuide;

/// Create a copy of EventTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTicketUiModelCopyWith<_EventTicketUiModel> get copyWith => __$EventTicketUiModelCopyWithImpl<_EventTicketUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTicketUiModel&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.priceText, priceText) || other.priceText == priceText)&&(identical(other.originalPriceText, originalPriceText) || other.originalPriceText == originalPriceText)&&(identical(other.quantityText, quantityText) || other.quantityText == quantityText)&&(identical(other.statusText, statusText) || other.statusText == statusText)&&(identical(other.statusColor, statusColor) || other.statusColor == statusColor)&&(identical(other.statusTextColor, statusTextColor) || other.statusTextColor == statusTextColor)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.dateText, dateText) || other.dateText == dateText)&&(identical(other.totalSalesAmountText, totalSalesAmountText) || other.totalSalesAmountText == totalSalesAmountText)&&(identical(other.showVerificationGuide, showVerificationGuide) || other.showVerificationGuide == showVerificationGuide));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,seatInfo,priceText,originalPriceText,quantityText,statusText,statusColor,statusTextColor,transactionId,thumbnailUrl,dateText,totalSalesAmountText,showVerificationGuide);

@override
String toString() {
  return 'EventTicketUiModel(ticketId: $ticketId, seatInfo: $seatInfo, priceText: $priceText, originalPriceText: $originalPriceText, quantityText: $quantityText, statusText: $statusText, statusColor: $statusColor, statusTextColor: $statusTextColor, transactionId: $transactionId, thumbnailUrl: $thumbnailUrl, dateText: $dateText, totalSalesAmountText: $totalSalesAmountText, showVerificationGuide: $showVerificationGuide)';
}


}

/// @nodoc
abstract mixin class _$EventTicketUiModelCopyWith<$Res> implements $EventTicketUiModelCopyWith<$Res> {
  factory _$EventTicketUiModelCopyWith(_EventTicketUiModel value, $Res Function(_EventTicketUiModel) _then) = __$EventTicketUiModelCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String seatInfo, String priceText, String originalPriceText, String quantityText, String statusText, Color statusColor, Color? statusTextColor, int? transactionId, String? thumbnailUrl, String dateText, String totalSalesAmountText, bool showVerificationGuide
});




}
/// @nodoc
class __$EventTicketUiModelCopyWithImpl<$Res>
    implements _$EventTicketUiModelCopyWith<$Res> {
  __$EventTicketUiModelCopyWithImpl(this._self, this._then);

  final _EventTicketUiModel _self;
  final $Res Function(_EventTicketUiModel) _then;

/// Create a copy of EventTicketUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? seatInfo = null,Object? priceText = null,Object? originalPriceText = null,Object? quantityText = null,Object? statusText = null,Object? statusColor = null,Object? statusTextColor = freezed,Object? transactionId = freezed,Object? thumbnailUrl = freezed,Object? dateText = null,Object? totalSalesAmountText = null,Object? showVerificationGuide = null,}) {
  return _then(_EventTicketUiModel(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,priceText: null == priceText ? _self.priceText : priceText // ignore: cast_nullable_to_non_nullable
as String,originalPriceText: null == originalPriceText ? _self.originalPriceText : originalPriceText // ignore: cast_nullable_to_non_nullable
as String,quantityText: null == quantityText ? _self.quantityText : quantityText // ignore: cast_nullable_to_non_nullable
as String,statusText: null == statusText ? _self.statusText : statusText // ignore: cast_nullable_to_non_nullable
as String,statusColor: null == statusColor ? _self.statusColor : statusColor // ignore: cast_nullable_to_non_nullable
as Color,statusTextColor: freezed == statusTextColor ? _self.statusTextColor : statusTextColor // ignore: cast_nullable_to_non_nullable
as Color?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,dateText: null == dateText ? _self.dateText : dateText // ignore: cast_nullable_to_non_nullable
as String,totalSalesAmountText: null == totalSalesAmountText ? _self.totalSalesAmountText : totalSalesAmountText // ignore: cast_nullable_to_non_nullable
as String,showVerificationGuide: null == showVerificationGuide ? _self.showVerificationGuide : showVerificationGuide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
