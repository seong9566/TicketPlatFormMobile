// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_dispute_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateDisputeState {

 int get step; DisputeTypeCode? get selectedType; String get description; List<XFile> get evidences; bool get isSubmitting; String? get errorMessage; int? get createdDisputeId;
/// Create a copy of CreateDisputeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDisputeStateCopyWith<CreateDisputeState> get copyWith => _$CreateDisputeStateCopyWithImpl<CreateDisputeState>(this as CreateDisputeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDisputeState&&(identical(other.step, step) || other.step == step)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.evidences, evidences)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.createdDisputeId, createdDisputeId) || other.createdDisputeId == createdDisputeId));
}


@override
int get hashCode => Object.hash(runtimeType,step,selectedType,description,const DeepCollectionEquality().hash(evidences),isSubmitting,errorMessage,createdDisputeId);

@override
String toString() {
  return 'CreateDisputeState(step: $step, selectedType: $selectedType, description: $description, evidences: $evidences, isSubmitting: $isSubmitting, errorMessage: $errorMessage, createdDisputeId: $createdDisputeId)';
}


}

/// @nodoc
abstract mixin class $CreateDisputeStateCopyWith<$Res>  {
  factory $CreateDisputeStateCopyWith(CreateDisputeState value, $Res Function(CreateDisputeState) _then) = _$CreateDisputeStateCopyWithImpl;
@useResult
$Res call({
 int step, DisputeTypeCode? selectedType, String description, List<XFile> evidences, bool isSubmitting, String? errorMessage, int? createdDisputeId
});




}
/// @nodoc
class _$CreateDisputeStateCopyWithImpl<$Res>
    implements $CreateDisputeStateCopyWith<$Res> {
  _$CreateDisputeStateCopyWithImpl(this._self, this._then);

  final CreateDisputeState _self;
  final $Res Function(CreateDisputeState) _then;

/// Create a copy of CreateDisputeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? selectedType = freezed,Object? description = null,Object? evidences = null,Object? isSubmitting = null,Object? errorMessage = freezed,Object? createdDisputeId = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self.evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<XFile>,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,createdDisputeId: freezed == createdDisputeId ? _self.createdDisputeId : createdDisputeId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDisputeState].
extension CreateDisputeStatePatterns on CreateDisputeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDisputeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDisputeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDisputeState value)  $default,){
final _that = this;
switch (_that) {
case _CreateDisputeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDisputeState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDisputeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int step,  DisputeTypeCode? selectedType,  String description,  List<XFile> evidences,  bool isSubmitting,  String? errorMessage,  int? createdDisputeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDisputeState() when $default != null:
return $default(_that.step,_that.selectedType,_that.description,_that.evidences,_that.isSubmitting,_that.errorMessage,_that.createdDisputeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int step,  DisputeTypeCode? selectedType,  String description,  List<XFile> evidences,  bool isSubmitting,  String? errorMessage,  int? createdDisputeId)  $default,) {final _that = this;
switch (_that) {
case _CreateDisputeState():
return $default(_that.step,_that.selectedType,_that.description,_that.evidences,_that.isSubmitting,_that.errorMessage,_that.createdDisputeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int step,  DisputeTypeCode? selectedType,  String description,  List<XFile> evidences,  bool isSubmitting,  String? errorMessage,  int? createdDisputeId)?  $default,) {final _that = this;
switch (_that) {
case _CreateDisputeState() when $default != null:
return $default(_that.step,_that.selectedType,_that.description,_that.evidences,_that.isSubmitting,_that.errorMessage,_that.createdDisputeId);case _:
  return null;

}
}

}

/// @nodoc


class _CreateDisputeState implements CreateDisputeState {
  const _CreateDisputeState({this.step = 0, this.selectedType, this.description = '', final  List<XFile> evidences = const [], this.isSubmitting = false, this.errorMessage, this.createdDisputeId}): _evidences = evidences;
  

@override@JsonKey() final  int step;
@override final  DisputeTypeCode? selectedType;
@override@JsonKey() final  String description;
 final  List<XFile> _evidences;
@override@JsonKey() List<XFile> get evidences {
  if (_evidences is EqualUnmodifiableListView) return _evidences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidences);
}

@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;
@override final  int? createdDisputeId;

/// Create a copy of CreateDisputeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDisputeStateCopyWith<_CreateDisputeState> get copyWith => __$CreateDisputeStateCopyWithImpl<_CreateDisputeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDisputeState&&(identical(other.step, step) || other.step == step)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._evidences, _evidences)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.createdDisputeId, createdDisputeId) || other.createdDisputeId == createdDisputeId));
}


@override
int get hashCode => Object.hash(runtimeType,step,selectedType,description,const DeepCollectionEquality().hash(_evidences),isSubmitting,errorMessage,createdDisputeId);

@override
String toString() {
  return 'CreateDisputeState(step: $step, selectedType: $selectedType, description: $description, evidences: $evidences, isSubmitting: $isSubmitting, errorMessage: $errorMessage, createdDisputeId: $createdDisputeId)';
}


}

/// @nodoc
abstract mixin class _$CreateDisputeStateCopyWith<$Res> implements $CreateDisputeStateCopyWith<$Res> {
  factory _$CreateDisputeStateCopyWith(_CreateDisputeState value, $Res Function(_CreateDisputeState) _then) = __$CreateDisputeStateCopyWithImpl;
@override @useResult
$Res call({
 int step, DisputeTypeCode? selectedType, String description, List<XFile> evidences, bool isSubmitting, String? errorMessage, int? createdDisputeId
});




}
/// @nodoc
class __$CreateDisputeStateCopyWithImpl<$Res>
    implements _$CreateDisputeStateCopyWith<$Res> {
  __$CreateDisputeStateCopyWithImpl(this._self, this._then);

  final _CreateDisputeState _self;
  final $Res Function(_CreateDisputeState) _then;

/// Create a copy of CreateDisputeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? selectedType = freezed,Object? description = null,Object? evidences = null,Object? isSubmitting = null,Object? errorMessage = freezed,Object? createdDisputeId = freezed,}) {
  return _then(_CreateDisputeState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as DisputeTypeCode?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,evidences: null == evidences ? _self._evidences : evidences // ignore: cast_nullable_to_non_nullable
as List<XFile>,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,createdDisputeId: freezed == createdDisputeId ? _self.createdDisputeId : createdDisputeId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
