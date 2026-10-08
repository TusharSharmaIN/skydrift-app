// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drift_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriftEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DriftEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DriftEvent()';
}


}

/// @nodoc
class $DriftEventCopyWith<$Res>  {
$DriftEventCopyWith(DriftEvent _, $Res Function(DriftEvent) __);
}


/// Adds pattern-matching-related methods to [DriftEvent].
extension DriftEventPatterns on DriftEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AnalyzeCloudRequested value)?  analyzeCloudRequested,TResult Function( GalleryFetchRequested value)?  galleryFetchRequested,TResult Function( DriftReset value)?  driftReset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AnalyzeCloudRequested() when analyzeCloudRequested != null:
return analyzeCloudRequested(_that);case GalleryFetchRequested() when galleryFetchRequested != null:
return galleryFetchRequested(_that);case DriftReset() when driftReset != null:
return driftReset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AnalyzeCloudRequested value)  analyzeCloudRequested,required TResult Function( GalleryFetchRequested value)  galleryFetchRequested,required TResult Function( DriftReset value)  driftReset,}){
final _that = this;
switch (_that) {
case AnalyzeCloudRequested():
return analyzeCloudRequested(_that);case GalleryFetchRequested():
return galleryFetchRequested(_that);case DriftReset():
return driftReset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AnalyzeCloudRequested value)?  analyzeCloudRequested,TResult? Function( GalleryFetchRequested value)?  galleryFetchRequested,TResult? Function( DriftReset value)?  driftReset,}){
final _that = this;
switch (_that) {
case AnalyzeCloudRequested() when analyzeCloudRequested != null:
return analyzeCloudRequested(_that);case GalleryFetchRequested() when galleryFetchRequested != null:
return galleryFetchRequested(_that);case DriftReset() when driftReset != null:
return driftReset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( File image)?  analyzeCloudRequested,TResult Function()?  galleryFetchRequested,TResult Function()?  driftReset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AnalyzeCloudRequested() when analyzeCloudRequested != null:
return analyzeCloudRequested(_that.image);case GalleryFetchRequested() when galleryFetchRequested != null:
return galleryFetchRequested();case DriftReset() when driftReset != null:
return driftReset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( File image)  analyzeCloudRequested,required TResult Function()  galleryFetchRequested,required TResult Function()  driftReset,}) {final _that = this;
switch (_that) {
case AnalyzeCloudRequested():
return analyzeCloudRequested(_that.image);case GalleryFetchRequested():
return galleryFetchRequested();case DriftReset():
return driftReset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( File image)?  analyzeCloudRequested,TResult? Function()?  galleryFetchRequested,TResult? Function()?  driftReset,}) {final _that = this;
switch (_that) {
case AnalyzeCloudRequested() when analyzeCloudRequested != null:
return analyzeCloudRequested(_that.image);case GalleryFetchRequested() when galleryFetchRequested != null:
return galleryFetchRequested();case DriftReset() when driftReset != null:
return driftReset();case _:
  return null;

}
}

}

/// @nodoc


class AnalyzeCloudRequested implements DriftEvent {
  const AnalyzeCloudRequested(this.image);
  

 final  File image;

/// Create a copy of DriftEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyzeCloudRequestedCopyWith<AnalyzeCloudRequested> get copyWith => _$AnalyzeCloudRequestedCopyWithImpl<AnalyzeCloudRequested>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyzeCloudRequested&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode {
    return Object.hash(runtimeType,image);
}

@override
String toString() {
    return 'DriftEvent.analyzeCloudRequested(image: $image)';
}


}

/// @nodoc
abstract mixin class $AnalyzeCloudRequestedCopyWith<$Res> implements $DriftEventCopyWith<$Res> {
  factory $AnalyzeCloudRequestedCopyWith(AnalyzeCloudRequested value, $Res Function(AnalyzeCloudRequested) _then) = _$AnalyzeCloudRequestedCopyWithImpl;
@useResult
$Res call({
 File image
});




}
/// @nodoc
class _$AnalyzeCloudRequestedCopyWithImpl<$Res>
    implements $AnalyzeCloudRequestedCopyWith<$Res> {
  _$AnalyzeCloudRequestedCopyWithImpl(this._self, this._then);

  final AnalyzeCloudRequested _self;
  final $Res Function(AnalyzeCloudRequested) _then;

/// Create a copy of DriftEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(AnalyzeCloudRequested(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class GalleryFetchRequested implements DriftEvent {
  const GalleryFetchRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryFetchRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DriftEvent.galleryFetchRequested()';
}


}




/// @nodoc


class DriftReset implements DriftEvent {
  const DriftReset();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DriftReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'DriftEvent.driftReset()';
}


}




/// @nodoc
mixin _$DriftState {

 bool get isAnalyzing; bool get isLoadingGallery; DriftEntity get analyzedDrift; List<DriftEntity> get gallery; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriftStateCopyWith<DriftState> get copyWith => _$DriftStateCopyWithImpl<DriftState>(this as DriftState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DriftState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriftState&&(identical(other.isAnalyzing, _this.isAnalyzing) || other.isAnalyzing == _this.isAnalyzing)&&(identical(other.isLoadingGallery, _this.isLoadingGallery) || other.isLoadingGallery == _this.isLoadingGallery)&&(identical(other.analyzedDrift, _this.analyzedDrift) || other.analyzedDrift == _this.analyzedDrift)&&const DeepCollectionEquality().equals(other.gallery, _this.gallery)&&(identical(other.apiFailureOrSuccess, _this.apiFailureOrSuccess) || other.apiFailureOrSuccess == _this.apiFailureOrSuccess));
}


@override
int get hashCode {
  final _this = this as DriftState;
  return Object.hash(runtimeType,_this.isAnalyzing,_this.isLoadingGallery,_this.analyzedDrift,const DeepCollectionEquality().hash(_this.gallery),_this.apiFailureOrSuccess);
}

@override
String toString() {
  final _this = this as DriftState;
  return 'DriftState(isAnalyzing: ${_this.isAnalyzing}, isLoadingGallery: ${_this.isLoadingGallery}, analyzedDrift: ${_this.analyzedDrift}, gallery: ${_this.gallery}, apiFailureOrSuccess: ${_this.apiFailureOrSuccess})';
}


}

/// @nodoc
abstract mixin class $DriftStateCopyWith<$Res>  {
  factory $DriftStateCopyWith(DriftState value, $Res Function(DriftState) _then) = _$DriftStateCopyWithImpl;
@useResult
$Res call({
 bool isAnalyzing, bool isLoadingGallery, DriftEntity analyzedDrift, List<DriftEntity> gallery, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$DriftEntityCopyWith<$Res> get analyzedDrift;

}
/// @nodoc
class _$DriftStateCopyWithImpl<$Res>
    implements $DriftStateCopyWith<$Res> {
  _$DriftStateCopyWithImpl(this._self, this._then);

  final DriftState _self;
  final $Res Function(DriftState) _then;

/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAnalyzing = null,Object? isLoadingGallery = null,Object? analyzedDrift = null,Object? gallery = null,Object? apiFailureOrSuccess = null,}) {
  return _then(DriftState(
isAnalyzing: null == isAnalyzing ? _self.isAnalyzing : isAnalyzing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingGallery: null == isLoadingGallery ? _self.isLoadingGallery : isLoadingGallery // ignore: cast_nullable_to_non_nullable
as bool,analyzedDrift: null == analyzedDrift ? _self.analyzedDrift : analyzedDrift // ignore: cast_nullable_to_non_nullable
as DriftEntity,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<DriftEntity>,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriftEntityCopyWith<$Res> get analyzedDrift {
  
  return $DriftEntityCopyWith<$Res>(_self.analyzedDrift, (value) {
    return _then(_self.copyWith(analyzedDrift: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriftState].
extension DriftStatePatterns on DriftState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriftState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriftState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriftState value)  $default,){
final _that = this;
switch (_that) {
case _DriftState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriftState value)?  $default,){
final _that = this;
switch (_that) {
case _DriftState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAnalyzing,  bool isLoadingGallery,  DriftEntity analyzedDrift,  List<DriftEntity> gallery,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriftState() when $default != null:
return $default(_that.isAnalyzing,_that.isLoadingGallery,_that.analyzedDrift,_that.gallery,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAnalyzing,  bool isLoadingGallery,  DriftEntity analyzedDrift,  List<DriftEntity> gallery,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _DriftState():
return $default(_that.isAnalyzing,_that.isLoadingGallery,_that.analyzedDrift,_that.gallery,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAnalyzing,  bool isLoadingGallery,  DriftEntity analyzedDrift,  List<DriftEntity> gallery,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _DriftState() when $default != null:
return $default(_that.isAnalyzing,_that.isLoadingGallery,_that.analyzedDrift,_that.gallery,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _DriftState extends DriftState {
  const _DriftState({required this.isAnalyzing, required this.isLoadingGallery, required this.analyzedDrift, required  List<DriftEntity> gallery, required this.apiFailureOrSuccess}): _gallery = gallery,super._();
  

@override final  bool isAnalyzing;
@override final  bool isLoadingGallery;
@override final  DriftEntity analyzedDrift;
 final  List<DriftEntity> _gallery;
@override List<DriftEntity> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriftStateCopyWith<_DriftState> get copyWith => __$DriftStateCopyWithImpl<_DriftState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriftState&&(identical(other.isAnalyzing, isAnalyzing) || other.isAnalyzing == isAnalyzing)&&(identical(other.isLoadingGallery, isLoadingGallery) || other.isLoadingGallery == isLoadingGallery)&&(identical(other.analyzedDrift, analyzedDrift) || other.analyzedDrift == analyzedDrift)&&const DeepCollectionEquality().equals(other.gallery, _gallery)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isAnalyzing,isLoadingGallery,analyzedDrift,const DeepCollectionEquality().hash(_gallery),apiFailureOrSuccess);
}

@override
String toString() {
    return 'DriftState(isAnalyzing: $isAnalyzing, isLoadingGallery: $isLoadingGallery, analyzedDrift: $analyzedDrift, gallery: $gallery, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$DriftStateCopyWith<$Res> implements $DriftStateCopyWith<$Res> {
  factory _$DriftStateCopyWith(_DriftState value, $Res Function(_DriftState) _then) = __$DriftStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAnalyzing, bool isLoadingGallery, DriftEntity analyzedDrift, List<DriftEntity> gallery, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $DriftEntityCopyWith<$Res> get analyzedDrift;

}
/// @nodoc
class __$DriftStateCopyWithImpl<$Res>
    implements _$DriftStateCopyWith<$Res> {
  __$DriftStateCopyWithImpl(this._self, this._then);

  final _DriftState _self;
  final $Res Function(_DriftState) _then;

/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAnalyzing = null,Object? isLoadingGallery = null,Object? analyzedDrift = null,Object? gallery = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_DriftState(
isAnalyzing: null == isAnalyzing ? _self.isAnalyzing : isAnalyzing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingGallery: null == isLoadingGallery ? _self.isLoadingGallery : isLoadingGallery // ignore: cast_nullable_to_non_nullable
as bool,analyzedDrift: null == analyzedDrift ? _self.analyzedDrift : analyzedDrift // ignore: cast_nullable_to_non_nullable
as DriftEntity,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<DriftEntity>,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of DriftState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriftEntityCopyWith<$Res> get analyzedDrift {
  
  return $DriftEntityCopyWith<$Res>(_self.analyzedDrift, (value) {
    return _then(_self.copyWith(analyzedDrift: value));
  });
}
}

// dart format on
