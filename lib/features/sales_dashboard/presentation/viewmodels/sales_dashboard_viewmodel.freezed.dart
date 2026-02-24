// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_dashboard_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesDashboardState {

 List<EventGroupUiModel> get items; int get currentPage; bool get hasMore; bool get isLoadingMore; String? get selectedStatus; int? get totalCount;
/// Create a copy of SalesDashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesDashboardStateCopyWith<SalesDashboardState> get copyWith => _$SalesDashboardStateCopyWithImpl<SalesDashboardState>(this as SalesDashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesDashboardState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),currentPage,hasMore,isLoadingMore,selectedStatus,totalCount);

@override
String toString() {
  return 'SalesDashboardState(items: $items, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $SalesDashboardStateCopyWith<$Res>  {
  factory $SalesDashboardStateCopyWith(SalesDashboardState value, $Res Function(SalesDashboardState) _then) = _$SalesDashboardStateCopyWithImpl;
@useResult
$Res call({
 List<EventGroupUiModel> items, int currentPage, bool hasMore, bool isLoadingMore, String? selectedStatus, int? totalCount
});




}
/// @nodoc
class _$SalesDashboardStateCopyWithImpl<$Res>
    implements $SalesDashboardStateCopyWith<$Res> {
  _$SalesDashboardStateCopyWithImpl(this._self, this._then);

  final SalesDashboardState _self;
  final $Res Function(SalesDashboardState) _then;

/// Create a copy of SalesDashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,Object? totalCount = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EventGroupUiModel>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesDashboardState].
extension SalesDashboardStatePatterns on SalesDashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesDashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesDashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesDashboardState value)  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesDashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _SalesDashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventGroupUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  int? totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesDashboardState() when $default != null:
return $default(_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventGroupUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  int? totalCount)  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardState():
return $default(_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventGroupUiModel> items,  int currentPage,  bool hasMore,  bool isLoadingMore,  String? selectedStatus,  int? totalCount)?  $default,) {final _that = this;
switch (_that) {
case _SalesDashboardState() when $default != null:
return $default(_that.items,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.selectedStatus,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _SalesDashboardState implements SalesDashboardState {
  const _SalesDashboardState({final  List<EventGroupUiModel> items = const [], this.currentPage = 1, this.hasMore = false, this.isLoadingMore = false, this.selectedStatus, this.totalCount}): _items = items;
  

 final  List<EventGroupUiModel> _items;
@override@JsonKey() List<EventGroupUiModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? selectedStatus;
@override final  int? totalCount;

/// Create a copy of SalesDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesDashboardStateCopyWith<_SalesDashboardState> get copyWith => __$SalesDashboardStateCopyWithImpl<_SalesDashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesDashboardState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),currentPage,hasMore,isLoadingMore,selectedStatus,totalCount);

@override
String toString() {
  return 'SalesDashboardState(items: $items, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, selectedStatus: $selectedStatus, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$SalesDashboardStateCopyWith<$Res> implements $SalesDashboardStateCopyWith<$Res> {
  factory _$SalesDashboardStateCopyWith(_SalesDashboardState value, $Res Function(_SalesDashboardState) _then) = __$SalesDashboardStateCopyWithImpl;
@override @useResult
$Res call({
 List<EventGroupUiModel> items, int currentPage, bool hasMore, bool isLoadingMore, String? selectedStatus, int? totalCount
});




}
/// @nodoc
class __$SalesDashboardStateCopyWithImpl<$Res>
    implements _$SalesDashboardStateCopyWith<$Res> {
  __$SalesDashboardStateCopyWithImpl(this._self, this._then);

  final _SalesDashboardState _self;
  final $Res Function(_SalesDashboardState) _then;

/// Create a copy of SalesDashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? selectedStatus = freezed,Object? totalCount = freezed,}) {
  return _then(_SalesDashboardState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EventGroupUiModel>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as String?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
