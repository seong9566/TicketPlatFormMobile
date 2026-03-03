// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_history_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettlementHistoryState {

 List<SettlementEntity> get settlements; int get totalCount; int get totalNetAmount; int get page; int get pageSize; bool get isLoadingMore; String? get selectedStatus;
/// Create a copy of SettlementHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementHistoryStateCopyWith<SettlementHistoryState> get copyWith => _$SettlementHistoryStateCopyWithImpl<SettlementHistoryState>(this as SettlementHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementHistoryState&&const DeepCollectionEquality().equals(other.settlements, settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(settlements),totalCount,totalNetAmount,page,pageSize,isLoadingMore,selectedStatus);

@override
String toString() {
  return 'SettlementHistoryState(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount, page: $page, pageSize: $pageSize, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus)';
}


}

/// @nodoc
abstract mixin class $SettlementHistoryStateCopyWith<$Res>  {
  factory $SettlementHistoryStateCopyWith(SettlementHistoryState value, $Res Function(SettlementHistoryState) _then) = _$SettlementHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<SettlementEntity> settlements, int totalCount, int totalNetAmount, int page, int pageSize, bool isLoadingMore, String? selectedStatus
});




}
/// @nodoc
class _$SettlementHistoryStateCopyWithImpl<$Res>
    implements $SettlementHistoryStateCopyWith<$Res> {
  _$SettlementHistoryStateCopyWithImpl(this._self, this._then);

  final SettlementHistoryState _self;
  final $Res Function(SettlementHistoryState) _then;

/// Create a copy of SettlementHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,Object? page = null,Object? pageSize = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,}) {
  return _then(_self.copyWith(
settlements: null == settlements ? _self.settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettlementHistoryState].
extension SettlementHistoryStatePatterns on SettlementHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _SettlementHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount,  int page,  int pageSize,  bool isLoadingMore,  String? selectedStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementHistoryState() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount,_that.page,_that.pageSize,_that.isLoadingMore,_that.selectedStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount,  int page,  int pageSize,  bool isLoadingMore,  String? selectedStatus)  $default,) {final _that = this;
switch (_that) {
case _SettlementHistoryState():
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount,_that.page,_that.pageSize,_that.isLoadingMore,_that.selectedStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SettlementEntity> settlements,  int totalCount,  int totalNetAmount,  int page,  int pageSize,  bool isLoadingMore,  String? selectedStatus)?  $default,) {final _that = this;
switch (_that) {
case _SettlementHistoryState() when $default != null:
return $default(_that.settlements,_that.totalCount,_that.totalNetAmount,_that.page,_that.pageSize,_that.isLoadingMore,_that.selectedStatus);case _:
  return null;

}
}

}

/// @nodoc


class _SettlementHistoryState implements SettlementHistoryState {
  const _SettlementHistoryState({final  List<SettlementEntity> settlements = const [], this.totalCount = 0, this.totalNetAmount = 0, this.page = 1, this.pageSize = 20, this.isLoadingMore = false, this.selectedStatus}): _settlements = settlements;
  

 final  List<SettlementEntity> _settlements;
@override@JsonKey() List<SettlementEntity> get settlements {
  if (_settlements is EqualUnmodifiableListView) return _settlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_settlements);
}

@override@JsonKey() final  int totalCount;
@override@JsonKey() final  int totalNetAmount;
@override@JsonKey() final  int page;
@override@JsonKey() final  int pageSize;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? selectedStatus;

/// Create a copy of SettlementHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementHistoryStateCopyWith<_SettlementHistoryState> get copyWith => __$SettlementHistoryStateCopyWithImpl<_SettlementHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementHistoryState&&const DeepCollectionEquality().equals(other._settlements, _settlements)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.totalNetAmount, totalNetAmount) || other.totalNetAmount == totalNetAmount)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_settlements),totalCount,totalNetAmount,page,pageSize,isLoadingMore,selectedStatus);

@override
String toString() {
  return 'SettlementHistoryState(settlements: $settlements, totalCount: $totalCount, totalNetAmount: $totalNetAmount, page: $page, pageSize: $pageSize, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus)';
}


}

/// @nodoc
abstract mixin class _$SettlementHistoryStateCopyWith<$Res> implements $SettlementHistoryStateCopyWith<$Res> {
  factory _$SettlementHistoryStateCopyWith(_SettlementHistoryState value, $Res Function(_SettlementHistoryState) _then) = __$SettlementHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<SettlementEntity> settlements, int totalCount, int totalNetAmount, int page, int pageSize, bool isLoadingMore, String? selectedStatus
});




}
/// @nodoc
class __$SettlementHistoryStateCopyWithImpl<$Res>
    implements _$SettlementHistoryStateCopyWith<$Res> {
  __$SettlementHistoryStateCopyWithImpl(this._self, this._then);

  final _SettlementHistoryState _self;
  final $Res Function(_SettlementHistoryState) _then;

/// Create a copy of SettlementHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settlements = null,Object? totalCount = null,Object? totalNetAmount = null,Object? page = null,Object? pageSize = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,}) {
  return _then(_SettlementHistoryState(
settlements: null == settlements ? _self._settlements : settlements // ignore: cast_nullable_to_non_nullable
as List<SettlementEntity>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,totalNetAmount: null == totalNetAmount ? _self.totalNetAmount : totalNetAmount // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
