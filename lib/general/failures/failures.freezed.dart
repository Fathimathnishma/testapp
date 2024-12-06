// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainFailures {
  String get errormsg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errormsg) serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errormsg)? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errormsg)? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(serverFailure value) serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serverFailure value)? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serverFailure value)? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainFailuresCopyWith<MainFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailuresCopyWith<$Res> {
  factory $MainFailuresCopyWith(
          MainFailures value, $Res Function(MainFailures) then) =
      _$MainFailuresCopyWithImpl<$Res, MainFailures>;
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class _$MainFailuresCopyWithImpl<$Res, $Val extends MainFailures>
    implements $MainFailuresCopyWith<$Res> {
  _$MainFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_value.copyWith(
      errormsg: null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$serverFailureImplCopyWith<$Res>
    implements $MainFailuresCopyWith<$Res> {
  factory _$$serverFailureImplCopyWith(
          _$serverFailureImpl value, $Res Function(_$serverFailureImpl) then) =
      __$$serverFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errormsg});
}

/// @nodoc
class __$$serverFailureImplCopyWithImpl<$Res>
    extends _$MainFailuresCopyWithImpl<$Res, _$serverFailureImpl>
    implements _$$serverFailureImplCopyWith<$Res> {
  __$$serverFailureImplCopyWithImpl(
      _$serverFailureImpl _value, $Res Function(_$serverFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormsg = null,
  }) {
    return _then(_$serverFailureImpl(
      errormsg: null == errormsg
          ? _value.errormsg
          : errormsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$serverFailureImpl implements serverFailure {
  const _$serverFailureImpl({required this.errormsg});

  @override
  final String errormsg;

  @override
  String toString() {
    return 'MainFailures.serverFailures(errormsg: $errormsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$serverFailureImpl &&
            (identical(other.errormsg, errormsg) ||
                other.errormsg == errormsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormsg);

  /// Create a copy of MainFailures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$serverFailureImplCopyWith<_$serverFailureImpl> get copyWith =>
      __$$serverFailureImplCopyWithImpl<_$serverFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errormsg) serverFailures,
  }) {
    return serverFailures(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errormsg)? serverFailures,
  }) {
    return serverFailures?.call(errormsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errormsg)? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(errormsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(serverFailure value) serverFailures,
  }) {
    return serverFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(serverFailure value)? serverFailures,
  }) {
    return serverFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(serverFailure value)? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(this);
    }
    return orElse();
  }
}

abstract class serverFailure implements MainFailures {
  const factory serverFailure({required final String errormsg}) =
      _$serverFailureImpl;

  @override
  String get errormsg;

  /// Create a copy of MainFailures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$serverFailureImplCopyWith<_$serverFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}