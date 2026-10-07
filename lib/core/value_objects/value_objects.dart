import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw StateError(f.toString()), id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class ValueFailure<T> {
  const ValueFailure.empty({required this.failedValue});

  final T failedValue;
}

class StringValue extends ValueObject<String> {
  factory StringValue(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) {
      return StringValue._(Left(ValueFailure.empty(failedValue: input)));
    }
    return StringValue._(Right(trimmed));
  }

  const StringValue._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
