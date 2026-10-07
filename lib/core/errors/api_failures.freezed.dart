// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure()';
}


}

/// @nodoc
class $ApiFailureCopyWith<$Res>  {
$ApiFailureCopyWith(ApiFailure _, $Res Function(ApiFailure) __);
}


/// Adds pattern-matching-related methods to [ApiFailure].
extension ApiFailurePatterns on ApiFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Other value)?  other,TResult Function( _ServerError value)?  serverError,TResult Function( _PoorConnection value)?  poorConnection,TResult Function( _ServerTimeout value)?  serverTimeout,TResult Function( _AuthenticationFailed value)?  authenticationFailed,TResult Function( _Forbidden value)?  forbidden,TResult Function( _NotFound value)?  notFound,TResult Function( _ValidationError value)?  validationError,TResult Function( _TooManyRequests value)?  tooManyRequests,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _ServerError() when serverError != null:
return serverError(_that);case _PoorConnection() when poorConnection != null:
return poorConnection(_that);case _ServerTimeout() when serverTimeout != null:
return serverTimeout(_that);case _AuthenticationFailed() when authenticationFailed != null:
return authenticationFailed(_that);case _Forbidden() when forbidden != null:
return forbidden(_that);case _NotFound() when notFound != null:
return notFound(_that);case _ValidationError() when validationError != null:
return validationError(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Other value)  other,required TResult Function( _ServerError value)  serverError,required TResult Function( _PoorConnection value)  poorConnection,required TResult Function( _ServerTimeout value)  serverTimeout,required TResult Function( _AuthenticationFailed value)  authenticationFailed,required TResult Function( _Forbidden value)  forbidden,required TResult Function( _NotFound value)  notFound,required TResult Function( _ValidationError value)  validationError,required TResult Function( _TooManyRequests value)  tooManyRequests,}){
final _that = this;
switch (_that) {
case _Other():
return other(_that);case _ServerError():
return serverError(_that);case _PoorConnection():
return poorConnection(_that);case _ServerTimeout():
return serverTimeout(_that);case _AuthenticationFailed():
return authenticationFailed(_that);case _Forbidden():
return forbidden(_that);case _NotFound():
return notFound(_that);case _ValidationError():
return validationError(_that);case _TooManyRequests():
return tooManyRequests(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Other value)?  other,TResult? Function( _ServerError value)?  serverError,TResult? Function( _PoorConnection value)?  poorConnection,TResult? Function( _ServerTimeout value)?  serverTimeout,TResult? Function( _AuthenticationFailed value)?  authenticationFailed,TResult? Function( _Forbidden value)?  forbidden,TResult? Function( _NotFound value)?  notFound,TResult? Function( _ValidationError value)?  validationError,TResult? Function( _TooManyRequests value)?  tooManyRequests,}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _ServerError() when serverError != null:
return serverError(_that);case _PoorConnection() when poorConnection != null:
return poorConnection(_that);case _ServerTimeout() when serverTimeout != null:
return serverTimeout(_that);case _AuthenticationFailed() when authenticationFailed != null:
return authenticationFailed(_that);case _Forbidden() when forbidden != null:
return forbidden(_that);case _NotFound() when notFound != null:
return notFound(_that);case _ValidationError() when validationError != null:
return validationError(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  other,TResult Function( String message)?  serverError,TResult Function()?  poorConnection,TResult Function()?  serverTimeout,TResult Function()?  authenticationFailed,TResult Function( String message)?  forbidden,TResult Function( String message)?  notFound,TResult Function( String message)?  validationError,TResult Function()?  tooManyRequests,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.message);case _ServerError() when serverError != null:
return serverError(_that.message);case _PoorConnection() when poorConnection != null:
return poorConnection();case _ServerTimeout() when serverTimeout != null:
return serverTimeout();case _AuthenticationFailed() when authenticationFailed != null:
return authenticationFailed();case _Forbidden() when forbidden != null:
return forbidden(_that.message);case _NotFound() when notFound != null:
return notFound(_that.message);case _ValidationError() when validationError != null:
return validationError(_that.message);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  other,required TResult Function( String message)  serverError,required TResult Function()  poorConnection,required TResult Function()  serverTimeout,required TResult Function()  authenticationFailed,required TResult Function( String message)  forbidden,required TResult Function( String message)  notFound,required TResult Function( String message)  validationError,required TResult Function()  tooManyRequests,}) {final _that = this;
switch (_that) {
case _Other():
return other(_that.message);case _ServerError():
return serverError(_that.message);case _PoorConnection():
return poorConnection();case _ServerTimeout():
return serverTimeout();case _AuthenticationFailed():
return authenticationFailed();case _Forbidden():
return forbidden(_that.message);case _NotFound():
return notFound(_that.message);case _ValidationError():
return validationError(_that.message);case _TooManyRequests():
return tooManyRequests();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  other,TResult? Function( String message)?  serverError,TResult? Function()?  poorConnection,TResult? Function()?  serverTimeout,TResult? Function()?  authenticationFailed,TResult? Function( String message)?  forbidden,TResult? Function( String message)?  notFound,TResult? Function( String message)?  validationError,TResult? Function()?  tooManyRequests,}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.message);case _ServerError() when serverError != null:
return serverError(_that.message);case _PoorConnection() when poorConnection != null:
return poorConnection();case _ServerTimeout() when serverTimeout != null:
return serverTimeout();case _AuthenticationFailed() when authenticationFailed != null:
return authenticationFailed();case _Forbidden() when forbidden != null:
return forbidden(_that.message);case _NotFound() when notFound != null:
return notFound(_that.message);case _ValidationError() when validationError != null:
return validationError(_that.message);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests();case _:
  return null;

}
}

}

/// @nodoc


class _Other implements ApiFailure {
  const _Other(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.other(message: $message)';
}


}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Other(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerError implements ApiFailure {
  const _ServerError(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerErrorCopyWith<_ServerError> get copyWith => __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(_ServerError value, $Res Function(_ServerError) _then) = __$ServerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PoorConnection implements ApiFailure {
  const _PoorConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoorConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.poorConnection()';
}


}




/// @nodoc


class _ServerTimeout implements ApiFailure {
  const _ServerTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.serverTimeout()';
}


}




/// @nodoc


class _AuthenticationFailed implements ApiFailure {
  const _AuthenticationFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticationFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.authenticationFailed()';
}


}




/// @nodoc


class _Forbidden implements ApiFailure {
  const _Forbidden(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForbiddenCopyWith<_Forbidden> get copyWith => __$ForbiddenCopyWithImpl<_Forbidden>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Forbidden&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.forbidden(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForbiddenCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$ForbiddenCopyWith(_Forbidden value, $Res Function(_Forbidden) _then) = __$ForbiddenCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ForbiddenCopyWithImpl<$Res>
    implements _$ForbiddenCopyWith<$Res> {
  __$ForbiddenCopyWithImpl(this._self, this._then);

  final _Forbidden _self;
  final $Res Function(_Forbidden) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Forbidden(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NotFound implements ApiFailure {
  const _NotFound(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotFoundCopyWith<_NotFound> get copyWith => __$NotFoundCopyWithImpl<_NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.notFound(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NotFoundCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) _then) = __$NotFoundCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$NotFoundCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(this._self, this._then);

  final _NotFound _self;
  final $Res Function(_NotFound) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_NotFound(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ValidationError implements ApiFailure {
  const _ValidationError(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationErrorCopyWith<_ValidationError> get copyWith => __$ValidationErrorCopyWithImpl<_ValidationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.validationError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ValidationErrorCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$ValidationErrorCopyWith(_ValidationError value, $Res Function(_ValidationError) _then) = __$ValidationErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ValidationErrorCopyWithImpl<$Res>
    implements _$ValidationErrorCopyWith<$Res> {
  __$ValidationErrorCopyWithImpl(this._self, this._then);

  final _ValidationError _self;
  final $Res Function(_ValidationError) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ValidationError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TooManyRequests implements ApiFailure {
  const _TooManyRequests();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TooManyRequests);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.tooManyRequests()';
}


}




// dart format on
