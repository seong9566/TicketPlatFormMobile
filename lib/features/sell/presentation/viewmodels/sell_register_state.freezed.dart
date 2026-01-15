// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SellRegisterState {

// Step 1: 공연 선택
 List<SellEventUiModel> get events; int get eventsTotalCount; int get eventsCurrentPage; int get eventsTotalPages; bool get eventsHasMore; String get eventsKeyword; SellEventUiModel? get selectedEvent;// Step 2: 일정 선택
 List<SellScheduleUiModel> get schedules; DateTime? get selectedDate; SellScheduleUiModel? get selectedSchedule;// Step 3: 좌석 정보
 SellSeatOptionsUiModel? get seatOptions; String? get selectedLocationId; bool get isCustomLocation; String get customLocation; String get area; String get row;// Step 4: 등록 정보
 int get quantity; bool get isConsecutive; String get price; String get description; List<File> get images;// 공통
 bool get isLoading; String? get errorMessage;
/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellRegisterStateCopyWith<SellRegisterState> get copyWith => _$SellRegisterStateCopyWithImpl<SellRegisterState>(this as SellRegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellRegisterState&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.eventsTotalCount, eventsTotalCount) || other.eventsTotalCount == eventsTotalCount)&&(identical(other.eventsCurrentPage, eventsCurrentPage) || other.eventsCurrentPage == eventsCurrentPage)&&(identical(other.eventsTotalPages, eventsTotalPages) || other.eventsTotalPages == eventsTotalPages)&&(identical(other.eventsHasMore, eventsHasMore) || other.eventsHasMore == eventsHasMore)&&(identical(other.eventsKeyword, eventsKeyword) || other.eventsKeyword == eventsKeyword)&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent)&&const DeepCollectionEquality().equals(other.schedules, schedules)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedSchedule, selectedSchedule) || other.selectedSchedule == selectedSchedule)&&(identical(other.seatOptions, seatOptions) || other.seatOptions == seatOptions)&&(identical(other.selectedLocationId, selectedLocationId) || other.selectedLocationId == selectedLocationId)&&(identical(other.isCustomLocation, isCustomLocation) || other.isCustomLocation == isCustomLocation)&&(identical(other.customLocation, customLocation) || other.customLocation == customLocation)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(events),eventsTotalCount,eventsCurrentPage,eventsTotalPages,eventsHasMore,eventsKeyword,selectedEvent,const DeepCollectionEquality().hash(schedules),selectedDate,selectedSchedule,seatOptions,selectedLocationId,isCustomLocation,customLocation,area,row,quantity,isConsecutive,price,description,const DeepCollectionEquality().hash(images),isLoading,errorMessage]);

@override
String toString() {
  return 'SellRegisterState(events: $events, eventsTotalCount: $eventsTotalCount, eventsCurrentPage: $eventsCurrentPage, eventsTotalPages: $eventsTotalPages, eventsHasMore: $eventsHasMore, eventsKeyword: $eventsKeyword, selectedEvent: $selectedEvent, schedules: $schedules, selectedDate: $selectedDate, selectedSchedule: $selectedSchedule, seatOptions: $seatOptions, selectedLocationId: $selectedLocationId, isCustomLocation: $isCustomLocation, customLocation: $customLocation, area: $area, row: $row, quantity: $quantity, isConsecutive: $isConsecutive, price: $price, description: $description, images: $images, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SellRegisterStateCopyWith<$Res>  {
  factory $SellRegisterStateCopyWith(SellRegisterState value, $Res Function(SellRegisterState) _then) = _$SellRegisterStateCopyWithImpl;
@useResult
$Res call({
 List<SellEventUiModel> events, int eventsTotalCount, int eventsCurrentPage, int eventsTotalPages, bool eventsHasMore, String eventsKeyword, SellEventUiModel? selectedEvent, List<SellScheduleUiModel> schedules, DateTime? selectedDate, SellScheduleUiModel? selectedSchedule, SellSeatOptionsUiModel? seatOptions, String? selectedLocationId, bool isCustomLocation, String customLocation, String area, String row, int quantity, bool isConsecutive, String price, String description, List<File> images, bool isLoading, String? errorMessage
});


$SellEventUiModelCopyWith<$Res>? get selectedEvent;$SellScheduleUiModelCopyWith<$Res>? get selectedSchedule;$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions;

}
/// @nodoc
class _$SellRegisterStateCopyWithImpl<$Res>
    implements $SellRegisterStateCopyWith<$Res> {
  _$SellRegisterStateCopyWithImpl(this._self, this._then);

  final SellRegisterState _self;
  final $Res Function(SellRegisterState) _then;

/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? eventsTotalCount = null,Object? eventsCurrentPage = null,Object? eventsTotalPages = null,Object? eventsHasMore = null,Object? eventsKeyword = null,Object? selectedEvent = freezed,Object? schedules = null,Object? selectedDate = freezed,Object? selectedSchedule = freezed,Object? seatOptions = freezed,Object? selectedLocationId = freezed,Object? isCustomLocation = null,Object? customLocation = null,Object? area = null,Object? row = null,Object? quantity = null,Object? isConsecutive = null,Object? price = null,Object? description = null,Object? images = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventUiModel>,eventsTotalCount: null == eventsTotalCount ? _self.eventsTotalCount : eventsTotalCount // ignore: cast_nullable_to_non_nullable
as int,eventsCurrentPage: null == eventsCurrentPage ? _self.eventsCurrentPage : eventsCurrentPage // ignore: cast_nullable_to_non_nullable
as int,eventsTotalPages: null == eventsTotalPages ? _self.eventsTotalPages : eventsTotalPages // ignore: cast_nullable_to_non_nullable
as int,eventsHasMore: null == eventsHasMore ? _self.eventsHasMore : eventsHasMore // ignore: cast_nullable_to_non_nullable
as bool,eventsKeyword: null == eventsKeyword ? _self.eventsKeyword : eventsKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedEvent: freezed == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as SellEventUiModel?,schedules: null == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleUiModel>,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedSchedule: freezed == selectedSchedule ? _self.selectedSchedule : selectedSchedule // ignore: cast_nullable_to_non_nullable
as SellScheduleUiModel?,seatOptions: freezed == seatOptions ? _self.seatOptions : seatOptions // ignore: cast_nullable_to_non_nullable
as SellSeatOptionsUiModel?,selectedLocationId: freezed == selectedLocationId ? _self.selectedLocationId : selectedLocationId // ignore: cast_nullable_to_non_nullable
as String?,isCustomLocation: null == isCustomLocation ? _self.isCustomLocation : isCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,customLocation: null == customLocation ? _self.customLocation : customLocation // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: null == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<File>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellEventUiModelCopyWith<$Res>? get selectedEvent {
    if (_self.selectedEvent == null) {
    return null;
  }

  return $SellEventUiModelCopyWith<$Res>(_self.selectedEvent!, (value) {
    return _then(_self.copyWith(selectedEvent: value));
  });
}/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellScheduleUiModelCopyWith<$Res>? get selectedSchedule {
    if (_self.selectedSchedule == null) {
    return null;
  }

  return $SellScheduleUiModelCopyWith<$Res>(_self.selectedSchedule!, (value) {
    return _then(_self.copyWith(selectedSchedule: value));
  });
}/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions {
    if (_self.seatOptions == null) {
    return null;
  }

  return $SellSeatOptionsUiModelCopyWith<$Res>(_self.seatOptions!, (value) {
    return _then(_self.copyWith(seatOptions: value));
  });
}
}


/// Adds pattern-matching-related methods to [SellRegisterState].
extension SellRegisterStatePatterns on SellRegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellRegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellRegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellRegisterState value)  $default,){
final _that = this;
switch (_that) {
case _SellRegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellRegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _SellRegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellEventUiModel> events,  int eventsTotalCount,  int eventsCurrentPage,  int eventsTotalPages,  bool eventsHasMore,  String eventsKeyword,  SellEventUiModel? selectedEvent,  List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  SellScheduleUiModel? selectedSchedule,  SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row,  int quantity,  bool isConsecutive,  String price,  String description,  List<File> images,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellRegisterState() when $default != null:
return $default(_that.events,_that.eventsTotalCount,_that.eventsCurrentPage,_that.eventsTotalPages,_that.eventsHasMore,_that.eventsKeyword,_that.selectedEvent,_that.schedules,_that.selectedDate,_that.selectedSchedule,_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row,_that.quantity,_that.isConsecutive,_that.price,_that.description,_that.images,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellEventUiModel> events,  int eventsTotalCount,  int eventsCurrentPage,  int eventsTotalPages,  bool eventsHasMore,  String eventsKeyword,  SellEventUiModel? selectedEvent,  List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  SellScheduleUiModel? selectedSchedule,  SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row,  int quantity,  bool isConsecutive,  String price,  String description,  List<File> images,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SellRegisterState():
return $default(_that.events,_that.eventsTotalCount,_that.eventsCurrentPage,_that.eventsTotalPages,_that.eventsHasMore,_that.eventsKeyword,_that.selectedEvent,_that.schedules,_that.selectedDate,_that.selectedSchedule,_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row,_that.quantity,_that.isConsecutive,_that.price,_that.description,_that.images,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellEventUiModel> events,  int eventsTotalCount,  int eventsCurrentPage,  int eventsTotalPages,  bool eventsHasMore,  String eventsKeyword,  SellEventUiModel? selectedEvent,  List<SellScheduleUiModel> schedules,  DateTime? selectedDate,  SellScheduleUiModel? selectedSchedule,  SellSeatOptionsUiModel? seatOptions,  String? selectedLocationId,  bool isCustomLocation,  String customLocation,  String area,  String row,  int quantity,  bool isConsecutive,  String price,  String description,  List<File> images,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SellRegisterState() when $default != null:
return $default(_that.events,_that.eventsTotalCount,_that.eventsCurrentPage,_that.eventsTotalPages,_that.eventsHasMore,_that.eventsKeyword,_that.selectedEvent,_that.schedules,_that.selectedDate,_that.selectedSchedule,_that.seatOptions,_that.selectedLocationId,_that.isCustomLocation,_that.customLocation,_that.area,_that.row,_that.quantity,_that.isConsecutive,_that.price,_that.description,_that.images,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SellRegisterState extends SellRegisterState {
  const _SellRegisterState({final  List<SellEventUiModel> events = const [], this.eventsTotalCount = 0, this.eventsCurrentPage = 1, this.eventsTotalPages = 0, this.eventsHasMore = false, this.eventsKeyword = '', this.selectedEvent, final  List<SellScheduleUiModel> schedules = const [], this.selectedDate, this.selectedSchedule, this.seatOptions, this.selectedLocationId, this.isCustomLocation = false, this.customLocation = '', this.area = '', this.row = '', this.quantity = 1, this.isConsecutive = false, this.price = '', this.description = '', final  List<File> images = const [], this.isLoading = false, this.errorMessage}): _events = events,_schedules = schedules,_images = images,super._();
  

// Step 1: 공연 선택
 final  List<SellEventUiModel> _events;
// Step 1: 공연 선택
@override@JsonKey() List<SellEventUiModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  int eventsTotalCount;
@override@JsonKey() final  int eventsCurrentPage;
@override@JsonKey() final  int eventsTotalPages;
@override@JsonKey() final  bool eventsHasMore;
@override@JsonKey() final  String eventsKeyword;
@override final  SellEventUiModel? selectedEvent;
// Step 2: 일정 선택
 final  List<SellScheduleUiModel> _schedules;
// Step 2: 일정 선택
@override@JsonKey() List<SellScheduleUiModel> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}

@override final  DateTime? selectedDate;
@override final  SellScheduleUiModel? selectedSchedule;
// Step 3: 좌석 정보
@override final  SellSeatOptionsUiModel? seatOptions;
@override final  String? selectedLocationId;
@override@JsonKey() final  bool isCustomLocation;
@override@JsonKey() final  String customLocation;
@override@JsonKey() final  String area;
@override@JsonKey() final  String row;
// Step 4: 등록 정보
@override@JsonKey() final  int quantity;
@override@JsonKey() final  bool isConsecutive;
@override@JsonKey() final  String price;
@override@JsonKey() final  String description;
 final  List<File> _images;
@override@JsonKey() List<File> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

// 공통
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellRegisterStateCopyWith<_SellRegisterState> get copyWith => __$SellRegisterStateCopyWithImpl<_SellRegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellRegisterState&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.eventsTotalCount, eventsTotalCount) || other.eventsTotalCount == eventsTotalCount)&&(identical(other.eventsCurrentPage, eventsCurrentPage) || other.eventsCurrentPage == eventsCurrentPage)&&(identical(other.eventsTotalPages, eventsTotalPages) || other.eventsTotalPages == eventsTotalPages)&&(identical(other.eventsHasMore, eventsHasMore) || other.eventsHasMore == eventsHasMore)&&(identical(other.eventsKeyword, eventsKeyword) || other.eventsKeyword == eventsKeyword)&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent)&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedSchedule, selectedSchedule) || other.selectedSchedule == selectedSchedule)&&(identical(other.seatOptions, seatOptions) || other.seatOptions == seatOptions)&&(identical(other.selectedLocationId, selectedLocationId) || other.selectedLocationId == selectedLocationId)&&(identical(other.isCustomLocation, isCustomLocation) || other.isCustomLocation == isCustomLocation)&&(identical(other.customLocation, customLocation) || other.customLocation == customLocation)&&(identical(other.area, area) || other.area == area)&&(identical(other.row, row) || other.row == row)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isConsecutive, isConsecutive) || other.isConsecutive == isConsecutive)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_events),eventsTotalCount,eventsCurrentPage,eventsTotalPages,eventsHasMore,eventsKeyword,selectedEvent,const DeepCollectionEquality().hash(_schedules),selectedDate,selectedSchedule,seatOptions,selectedLocationId,isCustomLocation,customLocation,area,row,quantity,isConsecutive,price,description,const DeepCollectionEquality().hash(_images),isLoading,errorMessage]);

@override
String toString() {
  return 'SellRegisterState(events: $events, eventsTotalCount: $eventsTotalCount, eventsCurrentPage: $eventsCurrentPage, eventsTotalPages: $eventsTotalPages, eventsHasMore: $eventsHasMore, eventsKeyword: $eventsKeyword, selectedEvent: $selectedEvent, schedules: $schedules, selectedDate: $selectedDate, selectedSchedule: $selectedSchedule, seatOptions: $seatOptions, selectedLocationId: $selectedLocationId, isCustomLocation: $isCustomLocation, customLocation: $customLocation, area: $area, row: $row, quantity: $quantity, isConsecutive: $isConsecutive, price: $price, description: $description, images: $images, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SellRegisterStateCopyWith<$Res> implements $SellRegisterStateCopyWith<$Res> {
  factory _$SellRegisterStateCopyWith(_SellRegisterState value, $Res Function(_SellRegisterState) _then) = __$SellRegisterStateCopyWithImpl;
@override @useResult
$Res call({
 List<SellEventUiModel> events, int eventsTotalCount, int eventsCurrentPage, int eventsTotalPages, bool eventsHasMore, String eventsKeyword, SellEventUiModel? selectedEvent, List<SellScheduleUiModel> schedules, DateTime? selectedDate, SellScheduleUiModel? selectedSchedule, SellSeatOptionsUiModel? seatOptions, String? selectedLocationId, bool isCustomLocation, String customLocation, String area, String row, int quantity, bool isConsecutive, String price, String description, List<File> images, bool isLoading, String? errorMessage
});


@override $SellEventUiModelCopyWith<$Res>? get selectedEvent;@override $SellScheduleUiModelCopyWith<$Res>? get selectedSchedule;@override $SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions;

}
/// @nodoc
class __$SellRegisterStateCopyWithImpl<$Res>
    implements _$SellRegisterStateCopyWith<$Res> {
  __$SellRegisterStateCopyWithImpl(this._self, this._then);

  final _SellRegisterState _self;
  final $Res Function(_SellRegisterState) _then;

/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? eventsTotalCount = null,Object? eventsCurrentPage = null,Object? eventsTotalPages = null,Object? eventsHasMore = null,Object? eventsKeyword = null,Object? selectedEvent = freezed,Object? schedules = null,Object? selectedDate = freezed,Object? selectedSchedule = freezed,Object? seatOptions = freezed,Object? selectedLocationId = freezed,Object? isCustomLocation = null,Object? customLocation = null,Object? area = null,Object? row = null,Object? quantity = null,Object? isConsecutive = null,Object? price = null,Object? description = null,Object? images = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_SellRegisterState(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<SellEventUiModel>,eventsTotalCount: null == eventsTotalCount ? _self.eventsTotalCount : eventsTotalCount // ignore: cast_nullable_to_non_nullable
as int,eventsCurrentPage: null == eventsCurrentPage ? _self.eventsCurrentPage : eventsCurrentPage // ignore: cast_nullable_to_non_nullable
as int,eventsTotalPages: null == eventsTotalPages ? _self.eventsTotalPages : eventsTotalPages // ignore: cast_nullable_to_non_nullable
as int,eventsHasMore: null == eventsHasMore ? _self.eventsHasMore : eventsHasMore // ignore: cast_nullable_to_non_nullable
as bool,eventsKeyword: null == eventsKeyword ? _self.eventsKeyword : eventsKeyword // ignore: cast_nullable_to_non_nullable
as String,selectedEvent: freezed == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as SellEventUiModel?,schedules: null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<SellScheduleUiModel>,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedSchedule: freezed == selectedSchedule ? _self.selectedSchedule : selectedSchedule // ignore: cast_nullable_to_non_nullable
as SellScheduleUiModel?,seatOptions: freezed == seatOptions ? _self.seatOptions : seatOptions // ignore: cast_nullable_to_non_nullable
as SellSeatOptionsUiModel?,selectedLocationId: freezed == selectedLocationId ? _self.selectedLocationId : selectedLocationId // ignore: cast_nullable_to_non_nullable
as String?,isCustomLocation: null == isCustomLocation ? _self.isCustomLocation : isCustomLocation // ignore: cast_nullable_to_non_nullable
as bool,customLocation: null == customLocation ? _self.customLocation : customLocation // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isConsecutive: null == isConsecutive ? _self.isConsecutive : isConsecutive // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<File>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellEventUiModelCopyWith<$Res>? get selectedEvent {
    if (_self.selectedEvent == null) {
    return null;
  }

  return $SellEventUiModelCopyWith<$Res>(_self.selectedEvent!, (value) {
    return _then(_self.copyWith(selectedEvent: value));
  });
}/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellScheduleUiModelCopyWith<$Res>? get selectedSchedule {
    if (_self.selectedSchedule == null) {
    return null;
  }

  return $SellScheduleUiModelCopyWith<$Res>(_self.selectedSchedule!, (value) {
    return _then(_self.copyWith(selectedSchedule: value));
  });
}/// Create a copy of SellRegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellSeatOptionsUiModelCopyWith<$Res>? get seatOptions {
    if (_self.seatOptions == null) {
    return null;
  }

  return $SellSeatOptionsUiModelCopyWith<$Res>(_self.seatOptions!, (value) {
    return _then(_self.copyWith(seatOptions: value));
  });
}
}

// dart format on
