// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reputation_write_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReputationWriteState {

 int get selectedScore; bool get isSubmitting; String? get errorMessage; bool get isSuccess;
/// Create a copy of ReputationWriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReputationWriteStateCopyWith<ReputationWriteState> get copyWith => _$ReputationWriteStateCopyWithImpl<ReputationWriteState>(this as ReputationWriteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReputationWriteState&&(identical(other.selectedScore, selectedScore) || other.selectedScore == selectedScore)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,selectedScore,isSubmitting,errorMessage,isSuccess);

@override
String toString() {
  return 'ReputationWriteState(selectedScore: $selectedScore, isSubmitting: $isSubmitting, errorMessage: $errorMessage, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $ReputationWriteStateCopyWith<$Res>  {
  factory $ReputationWriteStateCopyWith(ReputationWriteState value, $Res Function(ReputationWriteState) _then) = _$ReputationWriteStateCopyWithImpl;
@useResult
$Res call({
 int selectedScore, bool isSubmitting, String? errorMessage, bool isSuccess
});




}
/// @nodoc
class _$ReputationWriteStateCopyWithImpl<$Res>
    implements $ReputationWriteStateCopyWith<$Res> {
  _$ReputationWriteStateCopyWithImpl(this._self, this._then);

  final ReputationWriteState _self;
  final $Res Function(ReputationWriteState) _then;

/// Create a copy of ReputationWriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedScore = null,Object? isSubmitting = null,Object? errorMessage = freezed,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
selectedScore: null == selectedScore ? _self.selectedScore : selectedScore // ignore: cast_nullable_to_non_nullable
as int,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReputationWriteState].
extension ReputationWriteStatePatterns on ReputationWriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReputationWriteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReputationWriteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReputationWriteState value)  $default,){
final _that = this;
switch (_that) {
case _ReputationWriteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReputationWriteState value)?  $default,){
final _that = this;
switch (_that) {
case _ReputationWriteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedScore,  bool isSubmitting,  String? errorMessage,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReputationWriteState() when $default != null:
return $default(_that.selectedScore,_that.isSubmitting,_that.errorMessage,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedScore,  bool isSubmitting,  String? errorMessage,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _ReputationWriteState():
return $default(_that.selectedScore,_that.isSubmitting,_that.errorMessage,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedScore,  bool isSubmitting,  String? errorMessage,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ReputationWriteState() when $default != null:
return $default(_that.selectedScore,_that.isSubmitting,_that.errorMessage,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ReputationWriteState implements ReputationWriteState {
  const _ReputationWriteState({this.selectedScore = 0, this.isSubmitting = false, this.errorMessage, this.isSuccess = false});
  

@override@JsonKey() final  int selectedScore;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;
@override@JsonKey() final  bool isSuccess;

/// Create a copy of ReputationWriteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReputationWriteStateCopyWith<_ReputationWriteState> get copyWith => __$ReputationWriteStateCopyWithImpl<_ReputationWriteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReputationWriteState&&(identical(other.selectedScore, selectedScore) || other.selectedScore == selectedScore)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,selectedScore,isSubmitting,errorMessage,isSuccess);

@override
String toString() {
  return 'ReputationWriteState(selectedScore: $selectedScore, isSubmitting: $isSubmitting, errorMessage: $errorMessage, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$ReputationWriteStateCopyWith<$Res> implements $ReputationWriteStateCopyWith<$Res> {
  factory _$ReputationWriteStateCopyWith(_ReputationWriteState value, $Res Function(_ReputationWriteState) _then) = __$ReputationWriteStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedScore, bool isSubmitting, String? errorMessage, bool isSuccess
});




}
/// @nodoc
class __$ReputationWriteStateCopyWithImpl<$Res>
    implements _$ReputationWriteStateCopyWith<$Res> {
  __$ReputationWriteStateCopyWithImpl(this._self, this._then);

  final _ReputationWriteState _self;
  final $Res Function(_ReputationWriteState) _then;

/// Create a copy of ReputationWriteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedScore = null,Object? isSubmitting = null,Object? errorMessage = freezed,Object? isSuccess = null,}) {
  return _then(_ReputationWriteState(
selectedScore: null == selectedScore ? _self.selectedScore : selectedScore // ignore: cast_nullable_to_non_nullable
as int,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
