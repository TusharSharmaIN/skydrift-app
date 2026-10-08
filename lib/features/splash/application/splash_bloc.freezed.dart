// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SplashEvent()';
}


}

/// @nodoc
class $SplashEventCopyWith<$Res>  {
$SplashEventCopyWith(SplashEvent _, $Res Function(SplashEvent) __);
}


/// Adds pattern-matching-related methods to [SplashEvent].
extension SplashEventPatterns on SplashEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashStarted value)?  splashStarted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashStarted() when splashStarted != null:
return splashStarted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashStarted value)  splashStarted,}){
final _that = this;
switch (_that) {
case SplashStarted():
return splashStarted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashStarted value)?  splashStarted,}){
final _that = this;
switch (_that) {
case SplashStarted() when splashStarted != null:
return splashStarted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  splashStarted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashStarted() when splashStarted != null:
return splashStarted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  splashStarted,}) {final _that = this;
switch (_that) {
case SplashStarted():
return splashStarted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  splashStarted,}) {final _that = this;
switch (_that) {
case SplashStarted() when splashStarted != null:
return splashStarted();case _:
  return null;

}
}

}

/// @nodoc


class SplashStarted implements SplashEvent {
  const SplashStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SplashEvent.splashStarted()';
}


}




/// @nodoc
mixin _$SplashState {

 bool get shouldGoHome;
/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateCopyWith<SplashState> get copyWith => _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SplashState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState&&(identical(other.shouldGoHome, _this.shouldGoHome) || other.shouldGoHome == _this.shouldGoHome));
}


@override
int get hashCode {
  final _this = this as SplashState;
  return Object.hash(runtimeType,_this.shouldGoHome);
}

@override
String toString() {
  final _this = this as SplashState;
  return 'SplashState(shouldGoHome: ${_this.shouldGoHome})';
}


}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res>  {
  factory $SplashStateCopyWith(SplashState value, $Res Function(SplashState) _then) = _$SplashStateCopyWithImpl;
@useResult
$Res call({
 bool shouldGoHome
});




}
/// @nodoc
class _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shouldGoHome = null,}) {
  return _then(SplashState(
shouldGoHome: null == shouldGoHome ? _self.shouldGoHome : shouldGoHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashState value)  $default,){
final _that = this;
switch (_that) {
case _SplashState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashState value)?  $default,){
final _that = this;
switch (_that) {
case _SplashState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool shouldGoHome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashState() when $default != null:
return $default(_that.shouldGoHome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool shouldGoHome)  $default,) {final _that = this;
switch (_that) {
case _SplashState():
return $default(_that.shouldGoHome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool shouldGoHome)?  $default,) {final _that = this;
switch (_that) {
case _SplashState() when $default != null:
return $default(_that.shouldGoHome);case _:
  return null;

}
}

}

/// @nodoc


class _SplashState extends SplashState {
  const _SplashState({required this.shouldGoHome}): super._();
  

@override final  bool shouldGoHome;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashStateCopyWith<_SplashState> get copyWith => __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashState&&(identical(other.shouldGoHome, shouldGoHome) || other.shouldGoHome == shouldGoHome));
}


@override
int get hashCode {
    return Object.hash(runtimeType,shouldGoHome);
}

@override
String toString() {
    return 'SplashState(shouldGoHome: $shouldGoHome)';
}


}

/// @nodoc
abstract mixin class _$SplashStateCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(_SplashState value, $Res Function(_SplashState) _then) = __$SplashStateCopyWithImpl;
@override @useResult
$Res call({
 bool shouldGoHome
});




}
/// @nodoc
class __$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(this._self, this._then);

  final _SplashState _self;
  final $Res Function(_SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shouldGoHome = null,}) {
  return _then(_SplashState(
shouldGoHome: null == shouldGoHome ? _self.shouldGoHome : shouldGoHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
