part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const SplashState._();

  const factory SplashState({
    required bool shouldGoHome,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(shouldGoHome: false);
}
