// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryState {

 String get selectedCategory; List<ArtistUiModel> get popularArtists; List<ArtistUiModel> get allArtists; bool get isLoading; String? get errorMessage;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other.popularArtists, popularArtists)&&const DeepCollectionEquality().equals(other.allArtists, allArtists)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,const DeepCollectionEquality().hash(popularArtists),const DeepCollectionEquality().hash(allArtists),isLoading,errorMessage);

@override
String toString() {
  return 'CategoryState(selectedCategory: $selectedCategory, popularArtists: $popularArtists, allArtists: $allArtists, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 String selectedCategory, List<ArtistUiModel> popularArtists, List<ArtistUiModel> allArtists, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCategory = null,Object? popularArtists = null,Object? allArtists = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String,popularArtists: null == popularArtists ? _self.popularArtists : popularArtists // ignore: cast_nullable_to_non_nullable
as List<ArtistUiModel>,allArtists: null == allArtists ? _self.allArtists : allArtists // ignore: cast_nullable_to_non_nullable
as List<ArtistUiModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String selectedCategory,  List<ArtistUiModel> popularArtists,  List<ArtistUiModel> allArtists,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.selectedCategory,_that.popularArtists,_that.allArtists,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String selectedCategory,  List<ArtistUiModel> popularArtists,  List<ArtistUiModel> allArtists,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CategoryState():
return $default(_that.selectedCategory,_that.popularArtists,_that.allArtists,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String selectedCategory,  List<ArtistUiModel> popularArtists,  List<ArtistUiModel> allArtists,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.selectedCategory,_that.popularArtists,_that.allArtists,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryState implements CategoryState {
  const _CategoryState({this.selectedCategory = '콘서트', final  List<ArtistUiModel> popularArtists = const [], final  List<ArtistUiModel> allArtists = const [], this.isLoading = true, this.errorMessage}): _popularArtists = popularArtists,_allArtists = allArtists;
  

@override@JsonKey() final  String selectedCategory;
 final  List<ArtistUiModel> _popularArtists;
@override@JsonKey() List<ArtistUiModel> get popularArtists {
  if (_popularArtists is EqualUnmodifiableListView) return _popularArtists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularArtists);
}

 final  List<ArtistUiModel> _allArtists;
@override@JsonKey() List<ArtistUiModel> get allArtists {
  if (_allArtists is EqualUnmodifiableListView) return _allArtists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allArtists);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryStateCopyWith<_CategoryState> get copyWith => __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other._popularArtists, _popularArtists)&&const DeepCollectionEquality().equals(other._allArtists, _allArtists)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,const DeepCollectionEquality().hash(_popularArtists),const DeepCollectionEquality().hash(_allArtists),isLoading,errorMessage);

@override
String toString() {
  return 'CategoryState(selectedCategory: $selectedCategory, popularArtists: $popularArtists, allArtists: $allArtists, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CategoryStateCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(_CategoryState value, $Res Function(_CategoryState) _then) = __$CategoryStateCopyWithImpl;
@override @useResult
$Res call({
 String selectedCategory, List<ArtistUiModel> popularArtists, List<ArtistUiModel> allArtists, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(this._self, this._then);

  final _CategoryState _self;
  final $Res Function(_CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCategory = null,Object? popularArtists = null,Object? allArtists = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_CategoryState(
selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String,popularArtists: null == popularArtists ? _self._popularArtists : popularArtists // ignore: cast_nullable_to_non_nullable
as List<ArtistUiModel>,allArtists: null == allArtists ? _self._allArtists : allArtists // ignore: cast_nullable_to_non_nullable
as List<ArtistUiModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ArtistUiModel {

 int get id; String get name; String get description;// name + englishName
 String get eventTitle; String get imageUrl; bool get isNew; bool get isHot; bool get isSoldOut; String get ticketStatusText;
/// Create a copy of ArtistUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistUiModelCopyWith<ArtistUiModel> get copyWith => _$ArtistUiModelCopyWithImpl<ArtistUiModel>(this as ArtistUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketStatusText, ticketStatusText) || other.ticketStatusText == ticketStatusText));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,eventTitle,imageUrl,isNew,isHot,isSoldOut,ticketStatusText);

@override
String toString() {
  return 'ArtistUiModel(id: $id, name: $name, description: $description, eventTitle: $eventTitle, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketStatusText: $ticketStatusText)';
}


}

/// @nodoc
abstract mixin class $ArtistUiModelCopyWith<$Res>  {
  factory $ArtistUiModelCopyWith(ArtistUiModel value, $Res Function(ArtistUiModel) _then) = _$ArtistUiModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, String eventTitle, String imageUrl, bool isNew, bool isHot, bool isSoldOut, String ticketStatusText
});




}
/// @nodoc
class _$ArtistUiModelCopyWithImpl<$Res>
    implements $ArtistUiModelCopyWith<$Res> {
  _$ArtistUiModelCopyWithImpl(this._self, this._then);

  final ArtistUiModel _self;
  final $Res Function(ArtistUiModel) _then;

/// Create a copy of ArtistUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? eventTitle = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,Object? ticketStatusText = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,ticketStatusText: null == ticketStatusText ? _self.ticketStatusText : ticketStatusText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistUiModel].
extension ArtistUiModelPatterns on ArtistUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistUiModel value)  $default,){
final _that = this;
switch (_that) {
case _ArtistUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  String ticketStatusText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistUiModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketStatusText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  String ticketStatusText)  $default,) {final _that = this;
switch (_that) {
case _ArtistUiModel():
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketStatusText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  String eventTitle,  String imageUrl,  bool isNew,  bool isHot,  bool isSoldOut,  String ticketStatusText)?  $default,) {final _that = this;
switch (_that) {
case _ArtistUiModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.eventTitle,_that.imageUrl,_that.isNew,_that.isHot,_that.isSoldOut,_that.ticketStatusText);case _:
  return null;

}
}

}

/// @nodoc


class _ArtistUiModel implements ArtistUiModel {
  const _ArtistUiModel({required this.id, required this.name, required this.description, required this.eventTitle, required this.imageUrl, required this.isNew, required this.isHot, required this.isSoldOut, required this.ticketStatusText});
  

@override final  int id;
@override final  String name;
@override final  String description;
// name + englishName
@override final  String eventTitle;
@override final  String imageUrl;
@override final  bool isNew;
@override final  bool isHot;
@override final  bool isSoldOut;
@override final  String ticketStatusText;

/// Create a copy of ArtistUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistUiModelCopyWith<_ArtistUiModel> get copyWith => __$ArtistUiModelCopyWithImpl<_ArtistUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.isSoldOut, isSoldOut) || other.isSoldOut == isSoldOut)&&(identical(other.ticketStatusText, ticketStatusText) || other.ticketStatusText == ticketStatusText));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,eventTitle,imageUrl,isNew,isHot,isSoldOut,ticketStatusText);

@override
String toString() {
  return 'ArtistUiModel(id: $id, name: $name, description: $description, eventTitle: $eventTitle, imageUrl: $imageUrl, isNew: $isNew, isHot: $isHot, isSoldOut: $isSoldOut, ticketStatusText: $ticketStatusText)';
}


}

/// @nodoc
abstract mixin class _$ArtistUiModelCopyWith<$Res> implements $ArtistUiModelCopyWith<$Res> {
  factory _$ArtistUiModelCopyWith(_ArtistUiModel value, $Res Function(_ArtistUiModel) _then) = __$ArtistUiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, String eventTitle, String imageUrl, bool isNew, bool isHot, bool isSoldOut, String ticketStatusText
});




}
/// @nodoc
class __$ArtistUiModelCopyWithImpl<$Res>
    implements _$ArtistUiModelCopyWith<$Res> {
  __$ArtistUiModelCopyWithImpl(this._self, this._then);

  final _ArtistUiModel _self;
  final $Res Function(_ArtistUiModel) _then;

/// Create a copy of ArtistUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? eventTitle = null,Object? imageUrl = null,Object? isNew = null,Object? isHot = null,Object? isSoldOut = null,Object? ticketStatusText = null,}) {
  return _then(_ArtistUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isHot: null == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as bool,isSoldOut: null == isSoldOut ? _self.isSoldOut : isSoldOut // ignore: cast_nullable_to_non_nullable
as bool,ticketStatusText: null == ticketStatusText ? _self.ticketStatusText : ticketStatusText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
