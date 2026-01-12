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
mixin _$MessageEntity {

 int get messageId; int get roomId; int get senderId; String get senderNickname; String? get senderProfileImage; String? get message; String? get imageUrl; DateTime get createdAt; bool get isMyMessage;
/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<MessageEntity> get copyWith => _$MessageEntityCopyWithImpl<MessageEntity>(this as MessageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,isMyMessage);

@override
String toString() {
  return 'MessageEntity(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class $MessageEntityCopyWith<$Res>  {
  factory $MessageEntityCopyWith(MessageEntity value, $Res Function(MessageEntity) _then) = _$MessageEntityCopyWithImpl;
@useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, DateTime createdAt, bool isMyMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  DateTime createdAt,  bool isMyMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  DateTime createdAt,  bool isMyMessage)  $default,) {final _that = this;
switch (_that) {
case _MessageEntity():
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int messageId,  int roomId,  int senderId,  String senderNickname,  String? senderProfileImage,  String? message,  String? imageUrl,  DateTime createdAt,  bool isMyMessage)?  $default,) {final _that = this;
switch (_that) {
case _MessageEntity() when $default != null:
return $default(_that.messageId,_that.roomId,_that.senderId,_that.senderNickname,_that.senderProfileImage,_that.message,_that.imageUrl,_that.createdAt,_that.isMyMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MessageEntity implements MessageEntity {
  const _MessageEntity({required this.messageId, required this.roomId, required this.senderId, required this.senderNickname, this.senderProfileImage, this.message, this.imageUrl, required this.createdAt, required this.isMyMessage});
  

@override final  int messageId;
@override final  int roomId;
@override final  int senderId;
@override final  String senderNickname;
@override final  String? senderProfileImage;
@override final  String? message;
@override final  String? imageUrl;
@override final  DateTime createdAt;
@override final  bool isMyMessage;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageEntityCopyWith<_MessageEntity> get copyWith => __$MessageEntityCopyWithImpl<_MessageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderNickname, senderNickname) || other.senderNickname == senderNickname)&&(identical(other.senderProfileImage, senderProfileImage) || other.senderProfileImage == senderProfileImage)&&(identical(other.message, message) || other.message == message)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isMyMessage, isMyMessage) || other.isMyMessage == isMyMessage));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,roomId,senderId,senderNickname,senderProfileImage,message,imageUrl,createdAt,isMyMessage);

@override
String toString() {
  return 'MessageEntity(messageId: $messageId, roomId: $roomId, senderId: $senderId, senderNickname: $senderNickname, senderProfileImage: $senderProfileImage, message: $message, imageUrl: $imageUrl, createdAt: $createdAt, isMyMessage: $isMyMessage)';
}


}

/// @nodoc
abstract mixin class _$MessageEntityCopyWith<$Res> implements $MessageEntityCopyWith<$Res> {
  factory _$MessageEntityCopyWith(_MessageEntity value, $Res Function(_MessageEntity) _then) = __$MessageEntityCopyWithImpl;
@override @useResult
$Res call({
 int messageId, int roomId, int senderId, String senderNickname, String? senderProfileImage, String? message, String? imageUrl, DateTime createdAt, bool isMyMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? roomId = null,Object? senderId = null,Object? senderNickname = null,Object? senderProfileImage = freezed,Object? message = freezed,Object? imageUrl = freezed,Object? createdAt = null,Object? isMyMessage = null,}) {
  return _then(_MessageEntity(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as int,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderNickname: null == senderNickname ? _self.senderNickname : senderNickname // ignore: cast_nullable_to_non_nullable
as String,senderProfileImage: freezed == senderProfileImage ? _self.senderProfileImage : senderProfileImage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isMyMessage: null == isMyMessage ? _self.isMyMessage : isMyMessage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
