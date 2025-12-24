// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleEntity {

 String get id; String get title; String get content; String get authorId; DateTime get createdAt; String? get imageUrl;
/// Create a copy of ArticleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleEntityCopyWith<ArticleEntity> get copyWith => _$ArticleEntityCopyWithImpl<ArticleEntity>(this as ArticleEntity, _$identity);

  /// Serializes this ArticleEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,createdAt,imageUrl);

@override
String toString() {
  return 'ArticleEntity(id: $id, title: $title, content: $content, authorId: $authorId, createdAt: $createdAt, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ArticleEntityCopyWith<$Res>  {
  factory $ArticleEntityCopyWith(ArticleEntity value, $Res Function(ArticleEntity) _then) = _$ArticleEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, String authorId, DateTime createdAt, String? imageUrl
});




}
/// @nodoc
class _$ArticleEntityCopyWithImpl<$Res>
    implements $ArticleEntityCopyWith<$Res> {
  _$ArticleEntityCopyWithImpl(this._self, this._then);

  final ArticleEntity _self;
  final $Res Function(ArticleEntity) _then;

/// Create a copy of ArticleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? createdAt = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleEntity].
extension ArticleEntityPatterns on ArticleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleEntity value)  $default,){
final _that = this;
switch (_that) {
case _ArticleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  DateTime createdAt,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.createdAt,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  DateTime createdAt,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _ArticleEntity():
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.createdAt,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  String authorId,  DateTime createdAt,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _ArticleEntity() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.createdAt,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleEntity implements ArticleEntity {
  const _ArticleEntity({required this.id, required this.title, required this.content, required this.authorId, required this.createdAt, this.imageUrl});
  factory _ArticleEntity.fromJson(Map<String, dynamic> json) => _$ArticleEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String content;
@override final  String authorId;
@override final  DateTime createdAt;
@override final  String? imageUrl;

/// Create a copy of ArticleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleEntityCopyWith<_ArticleEntity> get copyWith => __$ArticleEntityCopyWithImpl<_ArticleEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,createdAt,imageUrl);

@override
String toString() {
  return 'ArticleEntity(id: $id, title: $title, content: $content, authorId: $authorId, createdAt: $createdAt, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ArticleEntityCopyWith<$Res> implements $ArticleEntityCopyWith<$Res> {
  factory _$ArticleEntityCopyWith(_ArticleEntity value, $Res Function(_ArticleEntity) _then) = __$ArticleEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, String authorId, DateTime createdAt, String? imageUrl
});




}
/// @nodoc
class __$ArticleEntityCopyWithImpl<$Res>
    implements _$ArticleEntityCopyWith<$Res> {
  __$ArticleEntityCopyWithImpl(this._self, this._then);

  final _ArticleEntity _self;
  final $Res Function(_ArticleEntity) _then;

/// Create a copy of ArticleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? createdAt = null,Object? imageUrl = freezed,}) {
  return _then(_ArticleEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
