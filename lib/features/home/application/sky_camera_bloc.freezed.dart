// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sky_camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SkyCameraEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SkyCameraEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SkyCameraEvent()';
}


}

/// @nodoc
class $SkyCameraEventCopyWith<$Res>  {
$SkyCameraEventCopyWith(SkyCameraEvent _, $Res Function(SkyCameraEvent) __);
}


/// Adds pattern-matching-related methods to [SkyCameraEvent].
extension SkyCameraEventPatterns on SkyCameraEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CameraStarted value)?  cameraStarted,TResult Function( CameraFlipped value)?  cameraFlipped,TResult Function( PhotoCaptureRequested value)?  photoCaptureRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CameraStarted() when cameraStarted != null:
return cameraStarted(_that);case CameraFlipped() when cameraFlipped != null:
return cameraFlipped(_that);case PhotoCaptureRequested() when photoCaptureRequested != null:
return photoCaptureRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CameraStarted value)  cameraStarted,required TResult Function( CameraFlipped value)  cameraFlipped,required TResult Function( PhotoCaptureRequested value)  photoCaptureRequested,}){
final _that = this;
switch (_that) {
case CameraStarted():
return cameraStarted(_that);case CameraFlipped():
return cameraFlipped(_that);case PhotoCaptureRequested():
return photoCaptureRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CameraStarted value)?  cameraStarted,TResult? Function( CameraFlipped value)?  cameraFlipped,TResult? Function( PhotoCaptureRequested value)?  photoCaptureRequested,}){
final _that = this;
switch (_that) {
case CameraStarted() when cameraStarted != null:
return cameraStarted(_that);case CameraFlipped() when cameraFlipped != null:
return cameraFlipped(_that);case PhotoCaptureRequested() when photoCaptureRequested != null:
return photoCaptureRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cameraStarted,TResult Function()?  cameraFlipped,TResult Function()?  photoCaptureRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CameraStarted() when cameraStarted != null:
return cameraStarted();case CameraFlipped() when cameraFlipped != null:
return cameraFlipped();case PhotoCaptureRequested() when photoCaptureRequested != null:
return photoCaptureRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cameraStarted,required TResult Function()  cameraFlipped,required TResult Function()  photoCaptureRequested,}) {final _that = this;
switch (_that) {
case CameraStarted():
return cameraStarted();case CameraFlipped():
return cameraFlipped();case PhotoCaptureRequested():
return photoCaptureRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cameraStarted,TResult? Function()?  cameraFlipped,TResult? Function()?  photoCaptureRequested,}) {final _that = this;
switch (_that) {
case CameraStarted() when cameraStarted != null:
return cameraStarted();case CameraFlipped() when cameraFlipped != null:
return cameraFlipped();case PhotoCaptureRequested() when photoCaptureRequested != null:
return photoCaptureRequested();case _:
  return null;

}
}

}

/// @nodoc


class CameraStarted implements SkyCameraEvent {
  const CameraStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SkyCameraEvent.cameraStarted()';
}


}




/// @nodoc


class CameraFlipped implements SkyCameraEvent {
  const CameraFlipped();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraFlipped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SkyCameraEvent.cameraFlipped()';
}


}




/// @nodoc


class PhotoCaptureRequested implements SkyCameraEvent {
  const PhotoCaptureRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoCaptureRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SkyCameraEvent.photoCaptureRequested()';
}


}




/// @nodoc
mixin _$SkyCameraState {

 bool get isReady; bool get isBusy; bool get canFlip; String get errorMessage; String get capturedPath;
/// Create a copy of SkyCameraState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkyCameraStateCopyWith<SkyCameraState> get copyWith => _$SkyCameraStateCopyWithImpl<SkyCameraState>(this as SkyCameraState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SkyCameraState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkyCameraState&&(identical(other.isReady, _this.isReady) || other.isReady == _this.isReady)&&(identical(other.isBusy, _this.isBusy) || other.isBusy == _this.isBusy)&&(identical(other.canFlip, _this.canFlip) || other.canFlip == _this.canFlip)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.capturedPath, _this.capturedPath) || other.capturedPath == _this.capturedPath));
}


@override
int get hashCode {
  final _this = this as SkyCameraState;
  return Object.hash(runtimeType,_this.isReady,_this.isBusy,_this.canFlip,_this.errorMessage,_this.capturedPath);
}

@override
String toString() {
  final _this = this as SkyCameraState;
  return 'SkyCameraState(isReady: ${_this.isReady}, isBusy: ${_this.isBusy}, canFlip: ${_this.canFlip}, errorMessage: ${_this.errorMessage}, capturedPath: ${_this.capturedPath})';
}


}

/// @nodoc
abstract mixin class $SkyCameraStateCopyWith<$Res>  {
  factory $SkyCameraStateCopyWith(SkyCameraState value, $Res Function(SkyCameraState) _then) = _$SkyCameraStateCopyWithImpl;
@useResult
$Res call({
 bool isReady, bool isBusy, bool canFlip, String errorMessage, String capturedPath
});




}
/// @nodoc
class _$SkyCameraStateCopyWithImpl<$Res>
    implements $SkyCameraStateCopyWith<$Res> {
  _$SkyCameraStateCopyWithImpl(this._self, this._then);

  final SkyCameraState _self;
  final $Res Function(SkyCameraState) _then;

/// Create a copy of SkyCameraState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isReady = null,Object? isBusy = null,Object? canFlip = null,Object? errorMessage = null,Object? capturedPath = null,}) {
  return _then(SkyCameraState(
isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,canFlip: null == canFlip ? _self.canFlip : canFlip // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,capturedPath: null == capturedPath ? _self.capturedPath : capturedPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SkyCameraState].
extension SkyCameraStatePatterns on SkyCameraState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkyCameraState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkyCameraState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkyCameraState value)  $default,){
final _that = this;
switch (_that) {
case _SkyCameraState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkyCameraState value)?  $default,){
final _that = this;
switch (_that) {
case _SkyCameraState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isReady,  bool isBusy,  bool canFlip,  String errorMessage,  String capturedPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkyCameraState() when $default != null:
return $default(_that.isReady,_that.isBusy,_that.canFlip,_that.errorMessage,_that.capturedPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isReady,  bool isBusy,  bool canFlip,  String errorMessage,  String capturedPath)  $default,) {final _that = this;
switch (_that) {
case _SkyCameraState():
return $default(_that.isReady,_that.isBusy,_that.canFlip,_that.errorMessage,_that.capturedPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isReady,  bool isBusy,  bool canFlip,  String errorMessage,  String capturedPath)?  $default,) {final _that = this;
switch (_that) {
case _SkyCameraState() when $default != null:
return $default(_that.isReady,_that.isBusy,_that.canFlip,_that.errorMessage,_that.capturedPath);case _:
  return null;

}
}

}

/// @nodoc


class _SkyCameraState extends SkyCameraState {
  const _SkyCameraState({required this.isReady, required this.isBusy, required this.canFlip, required this.errorMessage, required this.capturedPath}): super._();
  

@override final  bool isReady;
@override final  bool isBusy;
@override final  bool canFlip;
@override final  String errorMessage;
@override final  String capturedPath;

/// Create a copy of SkyCameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkyCameraStateCopyWith<_SkyCameraState> get copyWith => __$SkyCameraStateCopyWithImpl<_SkyCameraState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkyCameraState&&(identical(other.isReady, isReady) || other.isReady == isReady)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy)&&(identical(other.canFlip, canFlip) || other.canFlip == canFlip)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.capturedPath, capturedPath) || other.capturedPath == capturedPath));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isReady,isBusy,canFlip,errorMessage,capturedPath);
}

@override
String toString() {
    return 'SkyCameraState(isReady: $isReady, isBusy: $isBusy, canFlip: $canFlip, errorMessage: $errorMessage, capturedPath: $capturedPath)';
}


}

/// @nodoc
abstract mixin class _$SkyCameraStateCopyWith<$Res> implements $SkyCameraStateCopyWith<$Res> {
  factory _$SkyCameraStateCopyWith(_SkyCameraState value, $Res Function(_SkyCameraState) _then) = __$SkyCameraStateCopyWithImpl;
@override @useResult
$Res call({
 bool isReady, bool isBusy, bool canFlip, String errorMessage, String capturedPath
});




}
/// @nodoc
class __$SkyCameraStateCopyWithImpl<$Res>
    implements _$SkyCameraStateCopyWith<$Res> {
  __$SkyCameraStateCopyWithImpl(this._self, this._then);

  final _SkyCameraState _self;
  final $Res Function(_SkyCameraState) _then;

/// Create a copy of SkyCameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isReady = null,Object? isBusy = null,Object? canFlip = null,Object? errorMessage = null,Object? capturedPath = null,}) {
  return _then(_SkyCameraState(
isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,canFlip: null == canFlip ? _self.canFlip : canFlip // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,capturedPath: null == capturedPath ? _self.capturedPath : capturedPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
