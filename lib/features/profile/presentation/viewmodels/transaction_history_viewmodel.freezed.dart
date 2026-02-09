// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryState {

 List<TransactionHistoryUiModel> get items; String? get nextCursor; bool get hasMore; bool get isLoadingMore; String? get selectedStatus; String get selectedPeriod; String get selectedSort; int? get totalCount; int? get cachedTotalCount;
/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryStateCopyWith<TransactionHistoryState> get copyWith => _$TransactionHistoryStateCopyWithImpl<TransactionHistoryState>(this as TransactionHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.selectedSort, selectedSort) || other.selectedSort == selectedSort)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.cachedTotalCount, cachedTotalCount) || other.cachedTotalCount == cachedTotalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor,hasMore,isLoadingMore,selectedStatus,selectedPeriod,selectedSort,totalCount,cachedTotalCount);

@override
String toString() {
  return 'TransactionHistoryState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus, selectedPeriod: $selectedPeriod, selectedSort: $selectedSort, totalCount: $totalCount, cachedTotalCount: $cachedTotalCount)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryStateCopyWith<$Res>  {
  factory $TransactionHistoryStateCopyWith(TransactionHistoryState value, $Res Function(TransactionHistoryState) _then) = _$TransactionHistoryStateCopyWithImpl;
@useResult
$Res call({
 List<TransactionHistoryUiModel> items, String? nextCursor, bool hasMore, bool isLoadingMore, String? selectedStatus, String selectedPeriod, String selectedSort, int? totalCount, int? cachedTotalCount
});




}
/// @nodoc
class _$TransactionHistoryStateCopyWithImpl<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  _$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final TransactionHistoryState _self;
  final $Res Function(TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,Object? selectedPeriod = null,Object? selectedSort = null,Object? totalCount = freezed,Object? cachedTotalCount = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as String,selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as String,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,cachedTotalCount: freezed == cachedTotalCount ? _self.cachedTotalCount : cachedTotalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryState].
extension TransactionHistoryStatePatterns on TransactionHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  String selectedPeriod,  String selectedSort,  int? totalCount,  int? cachedTotalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.selectedPeriod,_that.selectedSort,_that.totalCount,_that.cachedTotalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  String selectedPeriod,  String selectedSort,  int? totalCount,  int? cachedTotalCount)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState():
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.selectedPeriod,_that.selectedSort,_that.totalCount,_that.cachedTotalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TransactionHistoryUiModel> items,  String? nextCursor,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  String selectedPeriod,  String selectedSort,  int? totalCount,  int? cachedTotalCount)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.selectedPeriod,_that.selectedSort,_that.totalCount,_that.cachedTotalCount);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistoryState implements TransactionHistoryState {
  const _TransactionHistoryState({final  List<TransactionHistoryUiModel> items = const [], this.nextCursor, this.hasMore = false, this.isLoadingMore = false, this.selectedStatus, this.selectedPeriod = 'all', this.selectedSort = 'latest', this.totalCount, this.cachedTotalCount}): _items = items;
  

 final  List<TransactionHistoryUiModel> _items;
@override@JsonKey() List<TransactionHistoryUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? selectedStatus;
@override@JsonKey() final  String selectedPeriod;
@override@JsonKey() final  String selectedSort;
@override final  int? totalCount;
@override final  int? cachedTotalCount;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryStateCopyWith<_TransactionHistoryState> get copyWith => __$TransactionHistoryStateCopyWithImpl<_TransactionHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.selectedSort, selectedSort) || other.selectedSort == selectedSort)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.cachedTotalCount, cachedTotalCount) || other.cachedTotalCount == cachedTotalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,hasMore,isLoadingMore,selectedStatus,selectedPeriod,selectedSort,totalCount,cachedTotalCount);

@override
String toString() {
  return 'TransactionHistoryState(items: $items, nextCursor: $nextCursor, hasMore: $hasMore, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus, selectedPeriod: $selectedPeriod, selectedSort: $selectedSort, totalCount: $totalCount, cachedTotalCount: $cachedTotalCount)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryStateCopyWith<$Res> implements $TransactionHistoryStateCopyWith<$Res> {
  factory _$TransactionHistoryStateCopyWith(_TransactionHistoryState value, $Res Function(_TransactionHistoryState) _then) = __$TransactionHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionHistoryUiModel> items, String? nextCursor, bool hasMore, bool isLoadingMore, String? selectedStatus, String selectedPeriod, String selectedSort, int? totalCount, int? cachedTotalCount
});




}
/// @nodoc
class __$TransactionHistoryStateCopyWithImpl<$Res>
    implements _$TransactionHistoryStateCopyWith<$Res> {
  __$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final _TransactionHistoryState _self;
  final $Res Function(_TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? hasMore = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,Object? selectedPeriod = null,Object? selectedSort = null,Object? totalCount = freezed,Object? cachedTotalCount = freezed,}) {
  return _then(_TransactionHistoryState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionHistoryUiModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as String,selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as String,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,cachedTotalCount: freezed == cachedTotalCount ? _self.cachedTotalCount : cachedTotalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
