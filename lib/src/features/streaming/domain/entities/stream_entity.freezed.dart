// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamEntity {

 String get id; String get title; String get thumbnailUrl; String get channelName; int get viewers; bool get isLive;
/// Create a copy of StreamEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamEntityCopyWith<StreamEntity> get copyWith => _$StreamEntityCopyWithImpl<StreamEntity>(this as StreamEntity, _$identity);

  /// Serializes this StreamEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.viewers, viewers) || other.viewers == viewers)&&(identical(other.isLive, isLive) || other.isLive == isLive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnailUrl,channelName,viewers,isLive);

@override
String toString() {
  return 'StreamEntity(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, channelName: $channelName, viewers: $viewers, isLive: $isLive)';
}


}

/// @nodoc
abstract mixin class $StreamEntityCopyWith<$Res>  {
  factory $StreamEntityCopyWith(StreamEntity value, $Res Function(StreamEntity) _then) = _$StreamEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String thumbnailUrl, String channelName, int viewers, bool isLive
});




}
/// @nodoc
class _$StreamEntityCopyWithImpl<$Res>
    implements $StreamEntityCopyWith<$Res> {
  _$StreamEntityCopyWithImpl(this._self, this._then);

  final StreamEntity _self;
  final $Res Function(StreamEntity) _then;

/// Create a copy of StreamEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? thumbnailUrl = null,Object? channelName = null,Object? viewers = null,Object? isLive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,viewers: null == viewers ? _self.viewers : viewers // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamEntity].
extension StreamEntityPatterns on StreamEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamEntity value)  $default,){
final _that = this;
switch (_that) {
case _StreamEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StreamEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String thumbnailUrl,  String channelName,  int viewers,  bool isLive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamEntity() when $default != null:
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.channelName,_that.viewers,_that.isLive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String thumbnailUrl,  String channelName,  int viewers,  bool isLive)  $default,) {final _that = this;
switch (_that) {
case _StreamEntity():
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.channelName,_that.viewers,_that.isLive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String thumbnailUrl,  String channelName,  int viewers,  bool isLive)?  $default,) {final _that = this;
switch (_that) {
case _StreamEntity() when $default != null:
return $default(_that.id,_that.title,_that.thumbnailUrl,_that.channelName,_that.viewers,_that.isLive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamEntity implements StreamEntity {
  const _StreamEntity({required this.id, required this.title, required this.thumbnailUrl, required this.channelName, required this.viewers, required this.isLive});
  factory _StreamEntity.fromJson(Map<String, dynamic> json) => _$StreamEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String thumbnailUrl;
@override final  String channelName;
@override final  int viewers;
@override final  bool isLive;

/// Create a copy of StreamEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamEntityCopyWith<_StreamEntity> get copyWith => __$StreamEntityCopyWithImpl<_StreamEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.channelName, channelName) || other.channelName == channelName)&&(identical(other.viewers, viewers) || other.viewers == viewers)&&(identical(other.isLive, isLive) || other.isLive == isLive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,thumbnailUrl,channelName,viewers,isLive);

@override
String toString() {
  return 'StreamEntity(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, channelName: $channelName, viewers: $viewers, isLive: $isLive)';
}


}

/// @nodoc
abstract mixin class _$StreamEntityCopyWith<$Res> implements $StreamEntityCopyWith<$Res> {
  factory _$StreamEntityCopyWith(_StreamEntity value, $Res Function(_StreamEntity) _then) = __$StreamEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String thumbnailUrl, String channelName, int viewers, bool isLive
});




}
/// @nodoc
class __$StreamEntityCopyWithImpl<$Res>
    implements _$StreamEntityCopyWith<$Res> {
  __$StreamEntityCopyWithImpl(this._self, this._then);

  final _StreamEntity _self;
  final $Res Function(_StreamEntity) _then;

/// Create a copy of StreamEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? thumbnailUrl = null,Object? channelName = null,Object? viewers = null,Object? isLive = null,}) {
  return _then(_StreamEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,channelName: null == channelName ? _self.channelName : channelName // ignore: cast_nullable_to_non_nullable
as String,viewers: null == viewers ? _self.viewers : viewers // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
