// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drift_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DriftDto {

 String get id; String get imageUrl; String get imaginedShape; String get cloudType; String get weatherForecast; String get poeticLore; DateTime get createdAt;
/// Create a copy of DriftDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriftDtoCopyWith<DriftDto> get copyWith => _$DriftDtoCopyWithImpl<DriftDto>(this as DriftDto, _$identity);

  /// Serializes this DriftDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriftDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriftDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.imaginedShape, _this.imaginedShape) || other.imaginedShape == _this.imaginedShape)&&(identical(other.cloudType, _this.cloudType) || other.cloudType == _this.cloudType)&&(identical(other.weatherForecast, _this.weatherForecast) || other.weatherForecast == _this.weatherForecast)&&(identical(other.poeticLore, _this.poeticLore) || other.poeticLore == _this.poeticLore)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriftDto;
  return Object.hash(runtimeType,_this.id,_this.imageUrl,_this.imaginedShape,_this.cloudType,_this.weatherForecast,_this.poeticLore,_this.createdAt);
}

@override
String toString() {
  final _this = this as DriftDto;
  return 'DriftDto(id: ${_this.id}, imageUrl: ${_this.imageUrl}, imaginedShape: ${_this.imaginedShape}, cloudType: ${_this.cloudType}, weatherForecast: ${_this.weatherForecast}, poeticLore: ${_this.poeticLore}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $DriftDtoCopyWith<$Res>  {
  factory $DriftDtoCopyWith(DriftDto value, $Res Function(DriftDto) _then) = _$DriftDtoCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl, String imaginedShape, String cloudType, String weatherForecast, String poeticLore, DateTime createdAt
});




}
/// @nodoc
class _$DriftDtoCopyWithImpl<$Res>
    implements $DriftDtoCopyWith<$Res> {
  _$DriftDtoCopyWithImpl(this._self, this._then);

  final DriftDto _self;
  final $Res Function(DriftDto) _then;

/// Create a copy of DriftDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,Object? imaginedShape = null,Object? cloudType = null,Object? weatherForecast = null,Object? poeticLore = null,Object? createdAt = null,}) {
  return _then(DriftDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imaginedShape: null == imaginedShape ? _self.imaginedShape : imaginedShape // ignore: cast_nullable_to_non_nullable
as String,cloudType: null == cloudType ? _self.cloudType : cloudType // ignore: cast_nullable_to_non_nullable
as String,weatherForecast: null == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String,poeticLore: null == poeticLore ? _self.poeticLore : poeticLore // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DriftDto].
extension DriftDtoPatterns on DriftDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriftDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriftDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriftDto value)  $default,){
final _that = this;
switch (_that) {
case _DriftDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriftDto value)?  $default,){
final _that = this;
switch (_that) {
case _DriftDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String imaginedShape,  String cloudType,  String weatherForecast,  String poeticLore,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriftDto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.imaginedShape,_that.cloudType,_that.weatherForecast,_that.poeticLore,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String imageUrl,  String imaginedShape,  String cloudType,  String weatherForecast,  String poeticLore,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DriftDto():
return $default(_that.id,_that.imageUrl,_that.imaginedShape,_that.cloudType,_that.weatherForecast,_that.poeticLore,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String imageUrl,  String imaginedShape,  String cloudType,  String weatherForecast,  String poeticLore,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DriftDto() when $default != null:
return $default(_that.id,_that.imageUrl,_that.imaginedShape,_that.cloudType,_that.weatherForecast,_that.poeticLore,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriftDto extends DriftDto {
  const _DriftDto({required this.id, required this.imageUrl, required this.imaginedShape, required this.cloudType, required this.weatherForecast, required this.poeticLore, required this.createdAt}): super._();
  factory _DriftDto.fromJson(Map<String, dynamic> json) => _$DriftDtoFromJson(json);

@override final  String id;
@override final  String imageUrl;
@override final  String imaginedShape;
@override final  String cloudType;
@override final  String weatherForecast;
@override final  String poeticLore;
@override final  DateTime createdAt;

/// Create a copy of DriftDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriftDtoCopyWith<_DriftDto> get copyWith => __$DriftDtoCopyWithImpl<_DriftDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriftDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriftDto&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imaginedShape, imaginedShape) || other.imaginedShape == imaginedShape)&&(identical(other.cloudType, cloudType) || other.cloudType == cloudType)&&(identical(other.weatherForecast, weatherForecast) || other.weatherForecast == weatherForecast)&&(identical(other.poeticLore, poeticLore) || other.poeticLore == poeticLore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,imageUrl,imaginedShape,cloudType,weatherForecast,poeticLore,createdAt);
}

@override
String toString() {
    return 'DriftDto(id: $id, imageUrl: $imageUrl, imaginedShape: $imaginedShape, cloudType: $cloudType, weatherForecast: $weatherForecast, poeticLore: $poeticLore, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DriftDtoCopyWith<$Res> implements $DriftDtoCopyWith<$Res> {
  factory _$DriftDtoCopyWith(_DriftDto value, $Res Function(_DriftDto) _then) = __$DriftDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl, String imaginedShape, String cloudType, String weatherForecast, String poeticLore, DateTime createdAt
});




}
/// @nodoc
class __$DriftDtoCopyWithImpl<$Res>
    implements _$DriftDtoCopyWith<$Res> {
  __$DriftDtoCopyWithImpl(this._self, this._then);

  final _DriftDto _self;
  final $Res Function(_DriftDto) _then;

/// Create a copy of DriftDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,Object? imaginedShape = null,Object? cloudType = null,Object? weatherForecast = null,Object? poeticLore = null,Object? createdAt = null,}) {
  return _then(_DriftDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imaginedShape: null == imaginedShape ? _self.imaginedShape : imaginedShape // ignore: cast_nullable_to_non_nullable
as String,cloudType: null == cloudType ? _self.cloudType : cloudType // ignore: cast_nullable_to_non_nullable
as String,weatherForecast: null == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String,poeticLore: null == poeticLore ? _self.poeticLore : poeticLore // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
