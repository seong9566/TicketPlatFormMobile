// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketingState {

 TicketingListingUiModel? get ticketingInfo; TicketingTicketGradeInfo? get selectedGrade; String get sortBy; bool get isLoading;
/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketingStateCopyWith<TicketingState> get copyWith => _$TicketingStateCopyWithImpl<TicketingState>(this as TicketingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketingState&&(identical(other.ticketingInfo, ticketingInfo) || other.ticketingInfo == ticketingInfo)&&(identical(other.selectedGrade, selectedGrade) || other.selectedGrade == selectedGrade)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,ticketingInfo,selectedGrade,sortBy,isLoading);

@override
String toString() {
  return 'TicketingState(ticketingInfo: $ticketingInfo, selectedGrade: $selectedGrade, sortBy: $sortBy, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $TicketingStateCopyWith<$Res>  {
  factory $TicketingStateCopyWith(TicketingState value, $Res Function(TicketingState) _then) = _$TicketingStateCopyWithImpl;
@useResult
$Res call({
 TicketingListingUiModel? ticketingInfo, TicketingTicketGradeInfo? selectedGrade, String sortBy, bool isLoading
});


$TicketingListingUiModelCopyWith<$Res>? get ticketingInfo;$TicketingTicketGradeInfoCopyWith<$Res>? get selectedGrade;

}
/// @nodoc
class _$TicketingStateCopyWithImpl<$Res>
    implements $TicketingStateCopyWith<$Res> {
  _$TicketingStateCopyWithImpl(this._self, this._then);

  final TicketingState _self;
  final $Res Function(TicketingState) _then;

/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketingInfo = freezed,Object? selectedGrade = freezed,Object? sortBy = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
ticketingInfo: freezed == ticketingInfo ? _self.ticketingInfo : ticketingInfo // ignore: cast_nullable_to_non_nullable
as TicketingListingUiModel?,selectedGrade: freezed == selectedGrade ? _self.selectedGrade : selectedGrade // ignore: cast_nullable_to_non_nullable
as TicketingTicketGradeInfo?,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingListingUiModelCopyWith<$Res>? get ticketingInfo {
    if (_self.ticketingInfo == null) {
    return null;
  }

  return $TicketingListingUiModelCopyWith<$Res>(_self.ticketingInfo!, (value) {
    return _then(_self.copyWith(ticketingInfo: value));
  });
}/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingTicketGradeInfoCopyWith<$Res>? get selectedGrade {
    if (_self.selectedGrade == null) {
    return null;
  }

  return $TicketingTicketGradeInfoCopyWith<$Res>(_self.selectedGrade!, (value) {
    return _then(_self.copyWith(selectedGrade: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketingState].
extension TicketingStatePatterns on TicketingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketingState value)  $default,){
final _that = this;
switch (_that) {
case _TicketingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketingState value)?  $default,){
final _that = this;
switch (_that) {
case _TicketingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TicketingListingUiModel? ticketingInfo,  TicketingTicketGradeInfo? selectedGrade,  String sortBy,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketingState() when $default != null:
return $default(_that.ticketingInfo,_that.selectedGrade,_that.sortBy,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TicketingListingUiModel? ticketingInfo,  TicketingTicketGradeInfo? selectedGrade,  String sortBy,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _TicketingState():
return $default(_that.ticketingInfo,_that.selectedGrade,_that.sortBy,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TicketingListingUiModel? ticketingInfo,  TicketingTicketGradeInfo? selectedGrade,  String sortBy,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _TicketingState() when $default != null:
return $default(_that.ticketingInfo,_that.selectedGrade,_that.sortBy,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _TicketingState implements TicketingState {
  const _TicketingState({this.ticketingInfo, this.selectedGrade, this.sortBy = '가격 낮은순', this.isLoading = false});
  

@override final  TicketingListingUiModel? ticketingInfo;
@override final  TicketingTicketGradeInfo? selectedGrade;
@override@JsonKey() final  String sortBy;
@override@JsonKey() final  bool isLoading;

/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketingStateCopyWith<_TicketingState> get copyWith => __$TicketingStateCopyWithImpl<_TicketingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketingState&&(identical(other.ticketingInfo, ticketingInfo) || other.ticketingInfo == ticketingInfo)&&(identical(other.selectedGrade, selectedGrade) || other.selectedGrade == selectedGrade)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,ticketingInfo,selectedGrade,sortBy,isLoading);

@override
String toString() {
  return 'TicketingState(ticketingInfo: $ticketingInfo, selectedGrade: $selectedGrade, sortBy: $sortBy, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$TicketingStateCopyWith<$Res> implements $TicketingStateCopyWith<$Res> {
  factory _$TicketingStateCopyWith(_TicketingState value, $Res Function(_TicketingState) _then) = __$TicketingStateCopyWithImpl;
@override @useResult
$Res call({
 TicketingListingUiModel? ticketingInfo, TicketingTicketGradeInfo? selectedGrade, String sortBy, bool isLoading
});


@override $TicketingListingUiModelCopyWith<$Res>? get ticketingInfo;@override $TicketingTicketGradeInfoCopyWith<$Res>? get selectedGrade;

}
/// @nodoc
class __$TicketingStateCopyWithImpl<$Res>
    implements _$TicketingStateCopyWith<$Res> {
  __$TicketingStateCopyWithImpl(this._self, this._then);

  final _TicketingState _self;
  final $Res Function(_TicketingState) _then;

/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketingInfo = freezed,Object? selectedGrade = freezed,Object? sortBy = null,Object? isLoading = null,}) {
  return _then(_TicketingState(
ticketingInfo: freezed == ticketingInfo ? _self.ticketingInfo : ticketingInfo // ignore: cast_nullable_to_non_nullable
as TicketingListingUiModel?,selectedGrade: freezed == selectedGrade ? _self.selectedGrade : selectedGrade // ignore: cast_nullable_to_non_nullable
as TicketingTicketGradeInfo?,sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingListingUiModelCopyWith<$Res>? get ticketingInfo {
    if (_self.ticketingInfo == null) {
    return null;
  }

  return $TicketingListingUiModelCopyWith<$Res>(_self.ticketingInfo!, (value) {
    return _then(_self.copyWith(ticketingInfo: value));
  });
}/// Create a copy of TicketingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketingTicketGradeInfoCopyWith<$Res>? get selectedGrade {
    if (_self.selectedGrade == null) {
    return null;
  }

  return $TicketingTicketGradeInfoCopyWith<$Res>(_self.selectedGrade!, (value) {
    return _then(_self.copyWith(selectedGrade: value));
  });
}
}

// dart format on
