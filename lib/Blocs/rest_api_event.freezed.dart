// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_api_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestApiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAboutHealthCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAboutHealthCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAboutHealthCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutHealthCategories value)
        fetchAboutHealthCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutHealthCategories value)? fetchAboutHealthCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutHealthCategories value)? fetchAboutHealthCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestApiEventCopyWith<$Res> {
  factory $RestApiEventCopyWith(
          RestApiEvent value, $Res Function(RestApiEvent) then) =
      _$RestApiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestApiEventCopyWithImpl<$Res> implements $RestApiEventCopyWith<$Res> {
  _$RestApiEventCopyWithImpl(this._value, this._then);

  final RestApiEvent _value;
  // ignore: unused_field
  final $Res Function(RestApiEvent) _then;
}

/// @nodoc
abstract class _$$AboutHealthCategoriesCopyWith<$Res> {
  factory _$$AboutHealthCategoriesCopyWith(_$AboutHealthCategories value,
          $Res Function(_$AboutHealthCategories) then) =
      __$$AboutHealthCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AboutHealthCategoriesCopyWithImpl<$Res>
    extends _$RestApiEventCopyWithImpl<$Res>
    implements _$$AboutHealthCategoriesCopyWith<$Res> {
  __$$AboutHealthCategoriesCopyWithImpl(_$AboutHealthCategories _value,
      $Res Function(_$AboutHealthCategories) _then)
      : super(_value, (v) => _then(v as _$AboutHealthCategories));

  @override
  _$AboutHealthCategories get _value => super._value as _$AboutHealthCategories;
}

/// @nodoc

class _$AboutHealthCategories extends AboutHealthCategories {
  const _$AboutHealthCategories() : super._();

  @override
  String toString() {
    return 'RestApiEvent.fetchAboutHealthCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AboutHealthCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAboutHealthCategories,
  }) {
    return fetchAboutHealthCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAboutHealthCategories,
  }) {
    return fetchAboutHealthCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAboutHealthCategories,
    required TResult orElse(),
  }) {
    if (fetchAboutHealthCategories != null) {
      return fetchAboutHealthCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AboutHealthCategories value)
        fetchAboutHealthCategories,
  }) {
    return fetchAboutHealthCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AboutHealthCategories value)? fetchAboutHealthCategories,
  }) {
    return fetchAboutHealthCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AboutHealthCategories value)? fetchAboutHealthCategories,
    required TResult orElse(),
  }) {
    if (fetchAboutHealthCategories != null) {
      return fetchAboutHealthCategories(this);
    }
    return orElse();
  }
}

abstract class AboutHealthCategories extends RestApiEvent {
  const factory AboutHealthCategories() = _$AboutHealthCategories;
  const AboutHealthCategories._() : super._();
}
