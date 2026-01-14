// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_ticket_resp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketImageRespDto {

 int get imageId; String get imageUrl; String get expiresAt;
/// Create a copy of TicketImageRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketImageRespDtoCopyWith<TicketImageRespDto> get copyWith => _$TicketImageRespDtoCopyWithImpl<TicketImageRespDto>(this as TicketImageRespDto, _$identity);

  /// Serializes this TicketImageRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketImageRespDto&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageId,imageUrl,expiresAt);

@override
String toString() {
  return 'TicketImageRespDto(imageId: $imageId, imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $TicketImageRespDtoCopyWith<$Res>  {
  factory $TicketImageRespDtoCopyWith(TicketImageRespDto value, $Res Function(TicketImageRespDto) _then) = _$TicketImageRespDtoCopyWithImpl;
@useResult
$Res call({
 int imageId, String imageUrl, String expiresAt
});




}
/// @nodoc
class _$TicketImageRespDtoCopyWithImpl<$Res>
    implements $TicketImageRespDtoCopyWith<$Res> {
  _$TicketImageRespDtoCopyWithImpl(this._self, this._then);

  final TicketImageRespDto _self;
  final $Res Function(TicketImageRespDto) _then;

/// Create a copy of TicketImageRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageId = null,Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketImageRespDto].
extension TicketImageRespDtoPatterns on TicketImageRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketImageRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketImageRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketImageRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketImageRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketImageRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketImageRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int imageId,  String imageUrl,  String expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketImageRespDto() when $default != null:
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int imageId,  String imageUrl,  String expiresAt)  $default,) {final _that = this;
switch (_that) {
case _TicketImageRespDto():
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int imageId,  String imageUrl,  String expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _TicketImageRespDto() when $default != null:
return $default(_that.imageId,_that.imageUrl,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketImageRespDto implements TicketImageRespDto {
  const _TicketImageRespDto({required this.imageId, required this.imageUrl, required this.expiresAt});
  factory _TicketImageRespDto.fromJson(Map<String, dynamic> json) => _$TicketImageRespDtoFromJson(json);

@override final  int imageId;
@override final  String imageUrl;
@override final  String expiresAt;

/// Create a copy of TicketImageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketImageRespDtoCopyWith<_TicketImageRespDto> get copyWith => __$TicketImageRespDtoCopyWithImpl<_TicketImageRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketImageRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketImageRespDto&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageId,imageUrl,expiresAt);

@override
String toString() {
  return 'TicketImageRespDto(imageId: $imageId, imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$TicketImageRespDtoCopyWith<$Res> implements $TicketImageRespDtoCopyWith<$Res> {
  factory _$TicketImageRespDtoCopyWith(_TicketImageRespDto value, $Res Function(_TicketImageRespDto) _then) = __$TicketImageRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int imageId, String imageUrl, String expiresAt
});




}
/// @nodoc
class __$TicketImageRespDtoCopyWithImpl<$Res>
    implements _$TicketImageRespDtoCopyWith<$Res> {
  __$TicketImageRespDtoCopyWithImpl(this._self, this._then);

  final _TicketImageRespDto _self;
  final $Res Function(_TicketImageRespDto) _then;

/// Create a copy of TicketImageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageId = null,Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_TicketImageRespDto(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SellTicketRegisterRespDto {

 int get ticketId; String get status; String get message; List<TicketImageRespDto>? get images;
/// Create a copy of SellTicketRegisterRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellTicketRegisterRespDtoCopyWith<SellTicketRegisterRespDto> get copyWith => _$SellTicketRegisterRespDtoCopyWithImpl<SellTicketRegisterRespDto>(this as SellTicketRegisterRespDto, _$identity);

  /// Serializes this SellTicketRegisterRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellTicketRegisterRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'SellTicketRegisterRespDto(ticketId: $ticketId, status: $status, message: $message, images: $images)';
}


}

/// @nodoc
abstract mixin class $SellTicketRegisterRespDtoCopyWith<$Res>  {
  factory $SellTicketRegisterRespDtoCopyWith(SellTicketRegisterRespDto value, $Res Function(SellTicketRegisterRespDto) _then) = _$SellTicketRegisterRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String status, String message, List<TicketImageRespDto>? images
});




}
/// @nodoc
class _$SellTicketRegisterRespDtoCopyWithImpl<$Res>
    implements $SellTicketRegisterRespDtoCopyWith<$Res> {
  _$SellTicketRegisterRespDtoCopyWithImpl(this._self, this._then);

  final SellTicketRegisterRespDto _self;
  final $Res Function(SellTicketRegisterRespDto) _then;

/// Create a copy of SellTicketRegisterRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? status = null,Object? message = null,Object? images = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageRespDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellTicketRegisterRespDto].
extension SellTicketRegisterRespDtoPatterns on SellTicketRegisterRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellTicketRegisterRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellTicketRegisterRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellTicketRegisterRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message,  List<TicketImageRespDto>? images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto() when $default != null:
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message,  List<TicketImageRespDto>? images)  $default,) {final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto():
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String status,  String message,  List<TicketImageRespDto>? images)?  $default,) {final _that = this;
switch (_that) {
case _SellTicketRegisterRespDto() when $default != null:
return $default(_that.ticketId,_that.status,_that.message,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellTicketRegisterRespDto implements SellTicketRegisterRespDto {
  const _SellTicketRegisterRespDto({required this.ticketId, required this.status, required this.message, final  List<TicketImageRespDto>? images}): _images = images;
  factory _SellTicketRegisterRespDto.fromJson(Map<String, dynamic> json) => _$SellTicketRegisterRespDtoFromJson(json);

@override final  int ticketId;
@override final  String status;
@override final  String message;
 final  List<TicketImageRespDto>? _images;
@override List<TicketImageRespDto>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SellTicketRegisterRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellTicketRegisterRespDtoCopyWith<_SellTicketRegisterRespDto> get copyWith => __$SellTicketRegisterRespDtoCopyWithImpl<_SellTicketRegisterRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellTicketRegisterRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellTicketRegisterRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'SellTicketRegisterRespDto(ticketId: $ticketId, status: $status, message: $message, images: $images)';
}


}

/// @nodoc
abstract mixin class _$SellTicketRegisterRespDtoCopyWith<$Res> implements $SellTicketRegisterRespDtoCopyWith<$Res> {
  factory _$SellTicketRegisterRespDtoCopyWith(_SellTicketRegisterRespDto value, $Res Function(_SellTicketRegisterRespDto) _then) = __$SellTicketRegisterRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String status, String message, List<TicketImageRespDto>? images
});




}
/// @nodoc
class __$SellTicketRegisterRespDtoCopyWithImpl<$Res>
    implements _$SellTicketRegisterRespDtoCopyWith<$Res> {
  __$SellTicketRegisterRespDtoCopyWithImpl(this._self, this._then);

  final _SellTicketRegisterRespDto _self;
  final $Res Function(_SellTicketRegisterRespDto) _then;

/// Create a copy of SellTicketRegisterRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? status = null,Object? message = null,Object? images = freezed,}) {
  return _then(_SellTicketRegisterRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageRespDto>?,
  ));
}


}


/// @nodoc
mixin _$TicketImagesRefreshRespDto {

 List<TicketImageRespDto> get images;
/// Create a copy of TicketImagesRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketImagesRefreshRespDtoCopyWith<TicketImagesRefreshRespDto> get copyWith => _$TicketImagesRefreshRespDtoCopyWithImpl<TicketImagesRefreshRespDto>(this as TicketImagesRefreshRespDto, _$identity);

  /// Serializes this TicketImagesRefreshRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketImagesRefreshRespDto&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'TicketImagesRefreshRespDto(images: $images)';
}


}

/// @nodoc
abstract mixin class $TicketImagesRefreshRespDtoCopyWith<$Res>  {
  factory $TicketImagesRefreshRespDtoCopyWith(TicketImagesRefreshRespDto value, $Res Function(TicketImagesRefreshRespDto) _then) = _$TicketImagesRefreshRespDtoCopyWithImpl;
@useResult
$Res call({
 List<TicketImageRespDto> images
});




}
/// @nodoc
class _$TicketImagesRefreshRespDtoCopyWithImpl<$Res>
    implements $TicketImagesRefreshRespDtoCopyWith<$Res> {
  _$TicketImagesRefreshRespDtoCopyWithImpl(this._self, this._then);

  final TicketImagesRefreshRespDto _self;
  final $Res Function(TicketImagesRefreshRespDto) _then;

/// Create a copy of TicketImagesRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageRespDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketImagesRefreshRespDto].
extension TicketImagesRefreshRespDtoPatterns on TicketImagesRefreshRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketImagesRefreshRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketImagesRefreshRespDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketImagesRefreshRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TicketImageRespDto> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto() when $default != null:
return $default(_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TicketImageRespDto> images)  $default,) {final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto():
return $default(_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TicketImageRespDto> images)?  $default,) {final _that = this;
switch (_that) {
case _TicketImagesRefreshRespDto() when $default != null:
return $default(_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketImagesRefreshRespDto implements TicketImagesRefreshRespDto {
  const _TicketImagesRefreshRespDto({required final  List<TicketImageRespDto> images}): _images = images;
  factory _TicketImagesRefreshRespDto.fromJson(Map<String, dynamic> json) => _$TicketImagesRefreshRespDtoFromJson(json);

 final  List<TicketImageRespDto> _images;
@override List<TicketImageRespDto> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of TicketImagesRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketImagesRefreshRespDtoCopyWith<_TicketImagesRefreshRespDto> get copyWith => __$TicketImagesRefreshRespDtoCopyWithImpl<_TicketImagesRefreshRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketImagesRefreshRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketImagesRefreshRespDto&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'TicketImagesRefreshRespDto(images: $images)';
}


}

/// @nodoc
abstract mixin class _$TicketImagesRefreshRespDtoCopyWith<$Res> implements $TicketImagesRefreshRespDtoCopyWith<$Res> {
  factory _$TicketImagesRefreshRespDtoCopyWith(_TicketImagesRefreshRespDto value, $Res Function(_TicketImagesRefreshRespDto) _then) = __$TicketImagesRefreshRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<TicketImageRespDto> images
});




}
/// @nodoc
class __$TicketImagesRefreshRespDtoCopyWithImpl<$Res>
    implements _$TicketImagesRefreshRespDtoCopyWith<$Res> {
  __$TicketImagesRefreshRespDtoCopyWithImpl(this._self, this._then);

  final _TicketImagesRefreshRespDto _self;
  final $Res Function(_TicketImagesRefreshRespDto) _then;

/// Create a copy of TicketImagesRefreshRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,}) {
  return _then(_TicketImagesRefreshRespDto(
images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<TicketImageRespDto>,
  ));
}


}


/// @nodoc
mixin _$SellMyTicketRespDto {

 int get ticketId; String get title; String get eventDatetime; String get seatInfo; int get quantity; int get remainingQuantity; int get price; int get originalPrice; String get status; String get createdAt; String? get thumbnailUrl;
/// Create a copy of SellMyTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellMyTicketRespDtoCopyWith<SellMyTicketRespDto> get copyWith => _$SellMyTicketRespDtoCopyWithImpl<SellMyTicketRespDto>(this as SellMyTicketRespDto, _$identity);

  /// Serializes this SellMyTicketRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellMyTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDatetime, eventDatetime) || other.eventDatetime == eventDatetime)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,eventDatetime,seatInfo,quantity,remainingQuantity,price,originalPrice,status,createdAt,thumbnailUrl);

@override
String toString() {
  return 'SellMyTicketRespDto(ticketId: $ticketId, title: $title, eventDatetime: $eventDatetime, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, status: $status, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $SellMyTicketRespDtoCopyWith<$Res>  {
  factory $SellMyTicketRespDtoCopyWith(SellMyTicketRespDto value, $Res Function(SellMyTicketRespDto) _then) = _$SellMyTicketRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String title, String eventDatetime, String seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String status, String createdAt, String? thumbnailUrl
});




}
/// @nodoc
class _$SellMyTicketRespDtoCopyWithImpl<$Res>
    implements $SellMyTicketRespDtoCopyWith<$Res> {
  _$SellMyTicketRespDtoCopyWithImpl(this._self, this._then);

  final SellMyTicketRespDto _self;
  final $Res Function(SellMyTicketRespDto) _then;

/// Create a copy of SellMyTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? title = null,Object? eventDatetime = null,Object? seatInfo = null,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? status = null,Object? createdAt = null,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDatetime: null == eventDatetime ? _self.eventDatetime : eventDatetime // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellMyTicketRespDto].
extension SellMyTicketRespDtoPatterns on SellMyTicketRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellMyTicketRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellMyTicketRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellMyTicketRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellMyTicketRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String title,  String eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  String createdAt,  String? thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellMyTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String title,  String eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  String createdAt,  String? thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketRespDto():
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String title,  String eventDatetime,  String seatInfo,  int quantity,  int remainingQuantity,  int price,  int originalPrice,  String status,  String createdAt,  String? thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketRespDto() when $default != null:
return $default(_that.ticketId,_that.title,_that.eventDatetime,_that.seatInfo,_that.quantity,_that.remainingQuantity,_that.price,_that.originalPrice,_that.status,_that.createdAt,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellMyTicketRespDto implements SellMyTicketRespDto {
  const _SellMyTicketRespDto({required this.ticketId, required this.title, required this.eventDatetime, required this.seatInfo, required this.quantity, required this.remainingQuantity, required this.price, required this.originalPrice, required this.status, required this.createdAt, this.thumbnailUrl});
  factory _SellMyTicketRespDto.fromJson(Map<String, dynamic> json) => _$SellMyTicketRespDtoFromJson(json);

@override final  int ticketId;
@override final  String title;
@override final  String eventDatetime;
@override final  String seatInfo;
@override final  int quantity;
@override final  int remainingQuantity;
@override final  int price;
@override final  int originalPrice;
@override final  String status;
@override final  String createdAt;
@override final  String? thumbnailUrl;

/// Create a copy of SellMyTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellMyTicketRespDtoCopyWith<_SellMyTicketRespDto> get copyWith => __$SellMyTicketRespDtoCopyWithImpl<_SellMyTicketRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellMyTicketRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellMyTicketRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.title, title) || other.title == title)&&(identical(other.eventDatetime, eventDatetime) || other.eventDatetime == eventDatetime)&&(identical(other.seatInfo, seatInfo) || other.seatInfo == seatInfo)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.remainingQuantity, remainingQuantity) || other.remainingQuantity == remainingQuantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,title,eventDatetime,seatInfo,quantity,remainingQuantity,price,originalPrice,status,createdAt,thumbnailUrl);

@override
String toString() {
  return 'SellMyTicketRespDto(ticketId: $ticketId, title: $title, eventDatetime: $eventDatetime, seatInfo: $seatInfo, quantity: $quantity, remainingQuantity: $remainingQuantity, price: $price, originalPrice: $originalPrice, status: $status, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$SellMyTicketRespDtoCopyWith<$Res> implements $SellMyTicketRespDtoCopyWith<$Res> {
  factory _$SellMyTicketRespDtoCopyWith(_SellMyTicketRespDto value, $Res Function(_SellMyTicketRespDto) _then) = __$SellMyTicketRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String title, String eventDatetime, String seatInfo, int quantity, int remainingQuantity, int price, int originalPrice, String status, String createdAt, String? thumbnailUrl
});




}
/// @nodoc
class __$SellMyTicketRespDtoCopyWithImpl<$Res>
    implements _$SellMyTicketRespDtoCopyWith<$Res> {
  __$SellMyTicketRespDtoCopyWithImpl(this._self, this._then);

  final _SellMyTicketRespDto _self;
  final $Res Function(_SellMyTicketRespDto) _then;

/// Create a copy of SellMyTicketRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? title = null,Object? eventDatetime = null,Object? seatInfo = null,Object? quantity = null,Object? remainingQuantity = null,Object? price = null,Object? originalPrice = null,Object? status = null,Object? createdAt = null,Object? thumbnailUrl = freezed,}) {
  return _then(_SellMyTicketRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventDatetime: null == eventDatetime ? _self.eventDatetime : eventDatetime // ignore: cast_nullable_to_non_nullable
as String,seatInfo: null == seatInfo ? _self.seatInfo : seatInfo // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,remainingQuantity: null == remainingQuantity ? _self.remainingQuantity : remainingQuantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SellMyTicketsPageRespDto {

 List<SellMyTicketRespDto> get tickets; int get totalCount; int get currentPage; int get pageSize; int get totalPages;
/// Create a copy of SellMyTicketsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellMyTicketsPageRespDtoCopyWith<SellMyTicketsPageRespDto> get copyWith => _$SellMyTicketsPageRespDtoCopyWithImpl<SellMyTicketsPageRespDto>(this as SellMyTicketsPageRespDto, _$identity);

  /// Serializes this SellMyTicketsPageRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellMyTicketsPageRespDto&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tickets),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellMyTicketsPageRespDto(tickets: $tickets, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $SellMyTicketsPageRespDtoCopyWith<$Res>  {
  factory $SellMyTicketsPageRespDtoCopyWith(SellMyTicketsPageRespDto value, $Res Function(SellMyTicketsPageRespDto) _then) = _$SellMyTicketsPageRespDtoCopyWithImpl;
@useResult
$Res call({
 List<SellMyTicketRespDto> tickets, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class _$SellMyTicketsPageRespDtoCopyWithImpl<$Res>
    implements $SellMyTicketsPageRespDtoCopyWith<$Res> {
  _$SellMyTicketsPageRespDtoCopyWithImpl(this._self, this._then);

  final SellMyTicketsPageRespDto _self;
  final $Res Function(SellMyTicketsPageRespDto) _then;

/// Create a copy of SellMyTicketsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tickets = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<SellMyTicketRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellMyTicketsPageRespDto].
extension SellMyTicketsPageRespDtoPatterns on SellMyTicketsPageRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellMyTicketsPageRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellMyTicketsPageRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellMyTicketsPageRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SellMyTicketRespDto> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto() when $default != null:
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SellMyTicketRespDto> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto():
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SellMyTicketRespDto> tickets,  int totalCount,  int currentPage,  int pageSize,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _SellMyTicketsPageRespDto() when $default != null:
return $default(_that.tickets,_that.totalCount,_that.currentPage,_that.pageSize,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellMyTicketsPageRespDto implements SellMyTicketsPageRespDto {
  const _SellMyTicketsPageRespDto({required final  List<SellMyTicketRespDto> tickets, required this.totalCount, required this.currentPage, required this.pageSize, required this.totalPages}): _tickets = tickets;
  factory _SellMyTicketsPageRespDto.fromJson(Map<String, dynamic> json) => _$SellMyTicketsPageRespDtoFromJson(json);

 final  List<SellMyTicketRespDto> _tickets;
@override List<SellMyTicketRespDto> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override final  int totalCount;
@override final  int currentPage;
@override final  int pageSize;
@override final  int totalPages;

/// Create a copy of SellMyTicketsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellMyTicketsPageRespDtoCopyWith<_SellMyTicketsPageRespDto> get copyWith => __$SellMyTicketsPageRespDtoCopyWithImpl<_SellMyTicketsPageRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellMyTicketsPageRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellMyTicketsPageRespDto&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tickets),totalCount,currentPage,pageSize,totalPages);

@override
String toString() {
  return 'SellMyTicketsPageRespDto(tickets: $tickets, totalCount: $totalCount, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$SellMyTicketsPageRespDtoCopyWith<$Res> implements $SellMyTicketsPageRespDtoCopyWith<$Res> {
  factory _$SellMyTicketsPageRespDtoCopyWith(_SellMyTicketsPageRespDto value, $Res Function(_SellMyTicketsPageRespDto) _then) = __$SellMyTicketsPageRespDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SellMyTicketRespDto> tickets, int totalCount, int currentPage, int pageSize, int totalPages
});




}
/// @nodoc
class __$SellMyTicketsPageRespDtoCopyWithImpl<$Res>
    implements _$SellMyTicketsPageRespDtoCopyWith<$Res> {
  __$SellMyTicketsPageRespDtoCopyWithImpl(this._self, this._then);

  final _SellMyTicketsPageRespDto _self;
  final $Res Function(_SellMyTicketsPageRespDto) _then;

/// Create a copy of SellMyTicketsPageRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tickets = null,Object? totalCount = null,Object? currentPage = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_SellMyTicketsPageRespDto(
tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<SellMyTicketRespDto>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SellTicketCancelRespDto {

 int get ticketId; String get status; String get message;
/// Create a copy of SellTicketCancelRespDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellTicketCancelRespDtoCopyWith<SellTicketCancelRespDto> get copyWith => _$SellTicketCancelRespDtoCopyWithImpl<SellTicketCancelRespDto>(this as SellTicketCancelRespDto, _$identity);

  /// Serializes this SellTicketCancelRespDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellTicketCancelRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message);

@override
String toString() {
  return 'SellTicketCancelRespDto(ticketId: $ticketId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $SellTicketCancelRespDtoCopyWith<$Res>  {
  factory $SellTicketCancelRespDtoCopyWith(SellTicketCancelRespDto value, $Res Function(SellTicketCancelRespDto) _then) = _$SellTicketCancelRespDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, String status, String message
});




}
/// @nodoc
class _$SellTicketCancelRespDtoCopyWithImpl<$Res>
    implements $SellTicketCancelRespDtoCopyWith<$Res> {
  _$SellTicketCancelRespDtoCopyWithImpl(this._self, this._then);

  final SellTicketCancelRespDto _self;
  final $Res Function(SellTicketCancelRespDto) _then;

/// Create a copy of SellTicketCancelRespDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SellTicketCancelRespDto].
extension SellTicketCancelRespDtoPatterns on SellTicketCancelRespDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellTicketCancelRespDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellTicketCancelRespDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellTicketCancelRespDto value)  $default,){
final _that = this;
switch (_that) {
case _SellTicketCancelRespDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellTicketCancelRespDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellTicketCancelRespDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellTicketCancelRespDto() when $default != null:
return $default(_that.ticketId,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketId,  String status,  String message)  $default,) {final _that = this;
switch (_that) {
case _SellTicketCancelRespDto():
return $default(_that.ticketId,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketId,  String status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _SellTicketCancelRespDto() when $default != null:
return $default(_that.ticketId,_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellTicketCancelRespDto implements SellTicketCancelRespDto {
  const _SellTicketCancelRespDto({required this.ticketId, required this.status, required this.message});
  factory _SellTicketCancelRespDto.fromJson(Map<String, dynamic> json) => _$SellTicketCancelRespDtoFromJson(json);

@override final  int ticketId;
@override final  String status;
@override final  String message;

/// Create a copy of SellTicketCancelRespDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellTicketCancelRespDtoCopyWith<_SellTicketCancelRespDto> get copyWith => __$SellTicketCancelRespDtoCopyWithImpl<_SellTicketCancelRespDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellTicketCancelRespDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellTicketCancelRespDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,status,message);

@override
String toString() {
  return 'SellTicketCancelRespDto(ticketId: $ticketId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SellTicketCancelRespDtoCopyWith<$Res> implements $SellTicketCancelRespDtoCopyWith<$Res> {
  factory _$SellTicketCancelRespDtoCopyWith(_SellTicketCancelRespDto value, $Res Function(_SellTicketCancelRespDto) _then) = __$SellTicketCancelRespDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, String status, String message
});




}
/// @nodoc
class __$SellTicketCancelRespDtoCopyWithImpl<$Res>
    implements _$SellTicketCancelRespDtoCopyWith<$Res> {
  __$SellTicketCancelRespDtoCopyWithImpl(this._self, this._then);

  final _SellTicketCancelRespDto _self;
  final $Res Function(_SellTicketCancelRespDto) _then;

/// Create a copy of SellTicketCancelRespDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? status = null,Object? message = null,}) {
  return _then(_SellTicketCancelRespDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
