// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventState {

 String get selectedEvent; List<EventSessionUiModel> get popularEventSessions; List<EventSessionUiModel> get allEventSessions; bool get isLoading; String? get errorMessage;
/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventStateCopyWith<EventState> get copyWith => _$EventStateCopyWithImpl<EventState>(this as EventState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventState&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent)&&const DeepCollectionEquality().equals(other.popularEventSessions, popularEventSessions)&&const DeepCollectionEquality().equals(other.allEventSessions, allEventSessions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedEvent,const DeepCollectionEquality().hash(popularEventSessions),const DeepCollectionEquality().hash(allEventSessions),isLoading,errorMessage);

@override
String toString() {
  return 'EventState(selectedEvent: $selectedEvent, popularEventSessions: $popularEventSessions, allEventSessions: $allEventSessions, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EventStateCopyWith<$Res>  {
  factory $EventStateCopyWith(EventState value, $Res Function(EventState) _then) = _$EventStateCopyWithImpl;
@useResult
$Res call({
 String selectedEvent, List<EventSessionUiModel> popularEventSessions, List<EventSessionUiModel> allEventSessions, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$EventStateCopyWithImpl<$Res>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._self, this._then);

  final EventState _self;
  final $Res Function(EventState) _then;

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedEvent = null,Object? popularEventSessions = null,Object? allEventSessions = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedEvent: null == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as String,popularEventSessions: null == popularEventSessions ? _self.popularEventSessions : popularEventSessions // ignore: cast_nullable_to_non_nullable
as List<EventSessionUiModel>,allEventSessions: null == allEventSessions ? _self.allEventSessions : allEventSessions // ignore: cast_nullable_to_non_nullable
as List<EventSessionUiModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventState].
extension EventStatePatterns on EventState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventState value)  $default,){
final _that = this;
switch (_that) {
case _EventState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventState value)?  $default,){
final _that = this;
switch (_that) {
case _EventState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedEvent,  List<EventSessionUiModel> popularEventSessions,  List<EventSessionUiModel> allEventSessions,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventState() when $default != null:
return $default(_that.selectedEvent,_that.popularEventSessions,_that.allEventSessions,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedEvent,  List<EventSessionUiModel> popularEventSessions,  List<EventSessionUiModel> allEventSessions,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _EventState():
return $default(_that.selectedEvent,_that.popularEventSessions,_that.allEventSessions,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedEvent,  List<EventSessionUiModel> popularEventSessions,  List<EventSessionUiModel> allEventSessions,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _EventState() when $default != null:
return $default(_that.selectedEvent,_that.popularEventSessions,_that.allEventSessions,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EventState implements EventState {
  const _EventState({this.selectedEvent = '콘서트', final  List<EventSessionUiModel> popularEventSessions = const [], final  List<EventSessionUiModel> allEventSessions = const [], this.isLoading = true, this.errorMessage}): _popularEventSessions = popularEventSessions,_allEventSessions = allEventSessions;
  

@override@JsonKey() final  String selectedEvent;
 final  List<EventSessionUiModel> _popularEventSessions;
@override@JsonKey() List<EventSessionUiModel> get popularEventSessions {
  if (_popularEventSessions is EqualUnmodifiableListView) return _popularEventSessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularEventSessions);
}

 final  List<EventSessionUiModel> _allEventSessions;
@override@JsonKey() List<EventSessionUiModel> get allEventSessions {
  if (_allEventSessions is EqualUnmodifiableListView) return _allEventSessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allEventSessions);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventStateCopyWith<_EventState> get copyWith => __$EventStateCopyWithImpl<_EventState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventState&&(identical(other.selectedEvent, selectedEvent) || other.selectedEvent == selectedEvent)&&const DeepCollectionEquality().equals(other._popularEventSessions, _popularEventSessions)&&const DeepCollectionEquality().equals(other._allEventSessions, _allEventSessions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedEvent,const DeepCollectionEquality().hash(_popularEventSessions),const DeepCollectionEquality().hash(_allEventSessions),isLoading,errorMessage);

@override
String toString() {
  return 'EventState(selectedEvent: $selectedEvent, popularEventSessions: $popularEventSessions, allEventSessions: $allEventSessions, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$EventStateCopyWith<$Res> implements $EventStateCopyWith<$Res> {
  factory _$EventStateCopyWith(_EventState value, $Res Function(_EventState) _then) = __$EventStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedEvent, List<EventSessionUiModel> popularEventSessions, List<EventSessionUiModel> allEventSessions, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$EventStateCopyWithImpl<$Res>
    implements _$EventStateCopyWith<$Res> {
  __$EventStateCopyWithImpl(this._self, this._then);

  final _EventState _self;
  final $Res Function(_EventState) _then;

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedEvent = null,Object? popularEventSessions = null,Object? allEventSessions = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_EventState(
selectedEvent: null == selectedEvent ? _self.selectedEvent : selectedEvent // ignore: cast_nullable_to_non_nullable
as String,popularEventSessions: null == popularEventSessions ? _self._popularEventSessions : popularEventSessions // ignore: cast_nullable_to_non_nullable
as List<EventSessionUiModel>,allEventSessions: null == allEventSessions ? _self._allEventSessions : allEventSessions // ignore: cast_nullable_to_non_nullable
as List<EventSessionUiModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$EventSessionUiModel {

 int get id; String get name; String get description;// name + englishName
 String get eventTitle; String get imageUrl; bool get isNew; bool get isHot; bool get isSoldOut;
/// Create a copy of EventSessionUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventSessionUiModelCopyWith<EventSessionUiModel> get copyWith => _$EventSessionUiModelCopyWithImpl<EventSessionUiModel>(this as EventSessionUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventSessionUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,eventTitle,imageUrl,isNew,isHot,isSoldOut);

@override
String toString() {
  return 'EventSessionUiModel(id: $id, name: $name, description: $description, eventTitle: $eventTitle, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut)';
}


}

/// @nodoc
abstract mixin class $EventSessionUiModelCopyWith<$Res>  {
  factory $EventSessionUiModelCopyWith(EventSessionUiModel value, $Res Function(EventSessionUiModel) _then) = _$EventSessionUiModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String eventTitle, String imageUrl, bool isNew, bool isHot, bool isSoldOut
});




}
/// @nodoc
class _$EventSessionUiModelCopyWithImpl<$Res>
    implements $EventSessionUiModelCopyWith<$Res> {
  _$EventSessionUiModelCopyWithImpl(this._self, this._then);

  final EventSessionUiModel _self;
  final $Res Function(EventSessionUiModel) _then;

/// Create a copy of EventSessionUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? eventTitle = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventSessionUiModel].
extension EventSessionUiModelPatterns on EventSessionUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventSessionUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventSessionUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventSessionUiModel value)  $default,){
final _that = this;
switch (_that) {
case _EventSessionUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventSessionUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventSessionUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventSessionUiModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut)  $default,) {final _that = this;
switch (_that) {
case _EventSessionUiModel():
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut)?  $default,) {final _that = this;
switch (_that) {
case _EventSessionUiModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut);case _:
  return null;

}
}

}

/// @nodoc


class _EventSessionUiModel implements EventSessionUiModel {
  const _EventSessionUiModel({required this.id, required this.name, required this.description, required this.eventTitle, required this.imageUrl, required this.isNew, required this.isHot, required this.isSoldOut});
  

@override final  int id;
@override final  String name;
@override final  String description;
// name + englishName
@override final  String eventTitle;
@override final  String imageUrl;
@override final  bool isNew;
@override final  bool isHot;
@override final  bool isSoldOut;

/// Create a copy of EventSessionUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSessionUiModelCopyWith<_EventSessionUiModel> get copyWith => __$EventSessionUiModelCopyWithImpl<_EventSessionUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSessionUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,eventTitle,imageUrl,isNew,isHot,isSoldOut);

@override
String toString() {
  return 'EventSessionUiModel(id: $id, name: $name, description: $description, eventTitle: $eventTitle, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut)';
}


}

/// @nodoc
abstract mixin class _$EventSessionUiModelCopyWith<$Res> implements $EventSessionUiModelCopyWith<$Res> {
  factory _$EventSessionUiModelCopyWith(_EventSessionUiModel value, $Res Function(_EventSessionUiModel) _then) = __$EventSessionUiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String eventTitle, String imageUrl, bool isNew, bool isHot, bool isSoldOut
});




}
/// @nodoc
class __$EventSessionUiModelCopyWithImpl<$Res>
    implements _$EventSessionUiModelCopyWith<$Res> {
  __$EventSessionUiModelCopyWithImpl(this._self, this._then);

  final _EventSessionUiModel _self;
  final $Res Function(_EventSessionUiModel) _then;

/// Create a copy of EventSessionUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? eventTitle = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,}) {
  return _then(_EventSessionUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
