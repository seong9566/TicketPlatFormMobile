// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageInfoEntity {

 String get url; DateTime? get expiresAt;
/// Create a copy of ImageInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageInfoEntityCopyWith<ImageInfoEntity> get copyWith => _$ImageInfoEntityCopyWithImpl<ImageInfoEntity>(this as ImageInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageInfoEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,url,expiresAt);

@override
String toString() {
  return 'ImageInfoEntity(url: $url, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $ImageInfoEntityCopyWith<$Res>  {
  factory $ImageInfoEntityCopyWith(ImageInfoEntity value, $Res Function(ImageInfoEntity) _then) = _$ImageInfoEntityCopyWithImpl;
@useResult
$Res call({
 String url, DateTime? expiresAt
});




}
/// @nodoc
class _$ImageInfoEntityCopyWithImpl<$Res>
    implements $ImageInfoEntityCopyWith<$Res> {
  _$ImageInfoEntityCopyWithImpl(this._self, this._then);

  final ImageInfoEntity _self;
  final $Res Function(ImageInfoEntity) _then;

/// Create a copy of ImageInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? expiresAt = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageInfoEntity].
extension ImageInfoEntityPatterns on ImageInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImageInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImageInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  DateTime? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageInfoEntity() when $default != null:
return $default(_that.url,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  DateTime? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _ImageInfoEntity():
return $default(_that.url,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  DateTime? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageInfoEntity() when $default != null:
return $default(_that.url,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _ImageInfoEntity implements ImageInfoEntity {
  const _ImageInfoEntity({required this.url, this.expiresAt});
  

@override final  String url;
@override final  DateTime? expiresAt;

/// Create a copy of ImageInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageInfoEntityCopyWith<_ImageInfoEntity> get copyWith => __$ImageInfoEntityCopyWithImpl<_ImageInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageInfoEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,url,expiresAt);

@override
String toString() {
  return 'ImageInfoEntity(url: $url, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$ImageInfoEntityCopyWith<$Res> implements $ImageInfoEntityCopyWith<$Res> {
  factory _$ImageInfoEntityCopyWith(_ImageInfoEntity value, $Res Function(_ImageInfoEntity) _then) = __$ImageInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String url, DateTime? expiresAt
});




}
/// @nodoc
class __$ImageInfoEntityCopyWithImpl<$Res>
    implements _$ImageInfoEntityCopyWith<$Res> {
  __$ImageInfoEntityCopyWithImpl(this._self, this._then);

  final _ImageInfoEntity _self;
  final $Res Function(_ImageInfoEntity) _then;

/// Create a copy of ImageInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? expiresAt = freezed,}) {
  return _then(_ImageInfoEntity(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$MessageEntity {

 int get messageId; int get roomId; int get senderId; String get senderNickname; String? get senderProfileImage; String? get message;@Deprecated('Use images instead') String? get imageUrl; List<ImageInfoEntity>? get images; DateTime get createdAt; bool get isMyMessage;
/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<MessageEntity> get copyWith => _$MessageEntityCopyWithImpl<MessageEntity>(this as MessageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,const DeepCollectionEquality().hash(images),createdAt,isMyMessage);

@override
String toString() {
  return 'MessageEntity(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, images: $images, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class $MessageEntityCopyWith<$Res>  {
  factory $MessageEntityCopyWith(MessageEntity value, $Res Function(MessageEntity) _then) = _$MessageEntityCopyWithImpl;
@useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message,@Deprecated('Use images instead') String? imageUrl, List<ImageInfoEntity>? images, DateTime createdAt, bool isMyMessage
});




}
/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._self, this._then);

  final MessageEntity _self;
  final $Res Function(MessageEntity) _then;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? images = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ImageInfoEntity>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isMyMessage: null == isMyMessage ? _self.isMyMessage : isMyMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageEntity].
extension MessageEntityPatterns on MessageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message, @Deprecated('Use images instead')  String? imageUrl,  List<ImageInfoEntity>? images,  DateTime createdAt,  bool isMyMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.images,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message, @Deprecated('Use images instead')  String? imageUrl,  List<ImageInfoEntity>? images,  DateTime createdAt,  bool isMyMessage)  $default,) {final _that = this;
switch (_that) {
case _MessageEntity():
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.images,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message, @Deprecated('Use images instead')  String? imageUrl,  List<ImageInfoEntity>? images,  DateTime createdAt,  bool isMyMessage)?  $default,) {final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.images,_that.createdAt,_that.isMyMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MessageEntity implements MessageEntity {
  const _MessageEntity({required this.messageId, required this.roomId, required this.senderId, required this.senderNickname, this.senderProfileImage, this.message, @Deprecated('Use images instead') this.imageUrl, final  List<ImageInfoEntity>? images, required this.createdAt, required this.isMyMessage}): _images = images;
  

@override final  int messageId;
@override final  int roomId;
@override final  int senderId;
@override final  String senderNickname;
@override final  String? senderProfileImage;
@override final  String? message;
@override@Deprecated('Use images instead') final  String? imageUrl;
 final  List<ImageInfoEntity>? _images;
@override List<ImageInfoEntity>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime createdAt;
@override final  bool isMyMessage;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageEntityCopyWith<_MessageEntity> get copyWith => __$MessageEntityCopyWithImpl<_MessageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,const DeepCollectionEquality().hash(_images),createdAt,isMyMessage);

@override
String toString() {
  return 'MessageEntity(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, images: $images, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class _$MessageEntityCopyWith<$Res> implements $MessageEntityCopyWith<$Res> {
  factory _$MessageEntityCopyWith(_MessageEntity value, $Res Function(_MessageEntity) _then) = __$MessageEntityCopyWithImpl;
@override @useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message,@Deprecated('Use images instead') String? imageUrl, List<ImageInfoEntity>? images, DateTime createdAt, bool isMyMessage
});




}
/// @nodoc
class __$MessageEntityCopyWithImpl<$Res>
    implements _$MessageEntityCopyWith<$Res> {
  __$MessageEntityCopyWithImpl(this._self, this._then);

  final _MessageEntity _self;
  final $Res Function(_MessageEntity) _then;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? images = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_MessageEntity(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageInfoEntity>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isMyMessage: null == isMyMessage ? _self.isMyMessage : isMyMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ImageUrlRefreshEntity {

 String get imageUrl; DateTime get expiresAt;
/// Create a copy of ImageUrlRefreshEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageUrlRefreshEntityCopyWith<ImageUrlRefreshEntity> get copyWith => _$ImageUrlRefreshEntityCopyWithImpl<ImageUrlRefreshEntity>(this as ImageUrlRefreshEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageUrlRefreshEntity&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,expiresAt);

@override
String toString() {
  return 'ImageUrlRefreshEntity(imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $ImageUrlRefreshEntityCopyWith<$Res>  {
  factory $ImageUrlRefreshEntityCopyWith(ImageUrlRefreshEntity value, $Res Function(ImageUrlRefreshEntity) _then) = _$ImageUrlRefreshEntityCopyWithImpl;
@useResult
$Res call({
 String imageUrl, DateTime expiresAt
});




}
/// @nodoc
class _$ImageUrlRefreshEntityCopyWithImpl<$Res>
    implements $ImageUrlRefreshEntityCopyWith<$Res> {
  _$ImageUrlRefreshEntityCopyWithImpl(this._self, this._then);

  final ImageUrlRefreshEntity _self;
  final $Res Function(ImageUrlRefreshEntity) _then;

/// Create a copy of ImageUrlRefreshEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageUrlRefreshEntity].
extension ImageUrlRefreshEntityPatterns on ImageUrlRefreshEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageUrlRefreshEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageUrlRefreshEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageUrlRefreshEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity() when $default != null:
return $default(_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity():
return $default(_that.imageUrl,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _ImageUrlRefreshEntity() when $default != null:
return $default(_that.imageUrl,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _ImageUrlRefreshEntity implements ImageUrlRefreshEntity {
  const _ImageUrlRefreshEntity({required this.imageUrl, required this.expiresAt});
  

@override final  String imageUrl;
@override final  DateTime expiresAt;

/// Create a copy of ImageUrlRefreshEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageUrlRefreshEntityCopyWith<_ImageUrlRefreshEntity> get copyWith => __$ImageUrlRefreshEntityCopyWithImpl<_ImageUrlRefreshEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageUrlRefreshEntity&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl,expiresAt);

@override
String toString() {
  return 'ImageUrlRefreshEntity(imageUrl: $imageUrl, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$ImageUrlRefreshEntityCopyWith<$Res> implements $ImageUrlRefreshEntityCopyWith<$Res> {
  factory _$ImageUrlRefreshEntityCopyWith(_ImageUrlRefreshEntity value, $Res Function(_ImageUrlRefreshEntity) _then) = __$ImageUrlRefreshEntityCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl, DateTime expiresAt
});




}
/// @nodoc
class __$ImageUrlRefreshEntityCopyWithImpl<$Res>
    implements _$ImageUrlRefreshEntityCopyWith<$Res> {
  __$ImageUrlRefreshEntityCopyWithImpl(this._self, this._then);

  final _ImageUrlRefreshEntity _self;
  final $Res Function(_ImageUrlRefreshEntity) _then;

/// Create a copy of ImageUrlRefreshEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,Object? expiresAt = null,}) {
  return _then(_ImageUrlRefreshEntity(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
