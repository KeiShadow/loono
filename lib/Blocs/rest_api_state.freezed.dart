// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_api_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestApiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category?>? categories)
        fetchAboutHealthState,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AboutHeathCategories value) fetchAboutHealthState,
    required TResult Function(RestApiError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestApiStateCopyWith<$Res> {
  factory $RestApiStateCopyWith(
          RestApiState value, $Res Function(RestApiState) then) =
      _$RestApiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestApiStateCopyWithImpl<$Res> implements $RestApiStateCopyWith<$Res> {
  _$RestApiStateCopyWithImpl(this._value, this._then);

  final RestApiState _value;
  // ignore: unused_field
  final $Res Function(RestApiState) _then;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, (v) => _then(v as _$LoadingState));

  @override
  _$LoadingState get _value => super._value as _$LoadingState;
}

/// @nodoc

class _$LoadingState extends LoadingState {
  const _$LoadingState() : super._();

  @override
  String toString() {
    return 'RestApiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category?>? categories)
        fetchAboutHealthState,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AboutHeathCategories value) fetchAboutHealthState,
    required TResult Function(RestApiError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState extends RestApiState {
  const factory LoadingState() = _$LoadingState;
  const LoadingState._() : super._();
}

/// @nodoc
abstract class _$$AboutHeathCategoriesCopyWith<$Res> {
  factory _$$AboutHeathCategoriesCopyWith(_$AboutHeathCategories value,
          $Res Function(_$AboutHeathCategories) then) =
      __$$AboutHeathCategoriesCopyWithImpl<$Res>;
  $Res call({List<Category?>? categories});
}

/// @nodoc
class __$$AboutHeathCategoriesCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements _$$AboutHeathCategoriesCopyWith<$Res> {
  __$$AboutHeathCategoriesCopyWithImpl(_$AboutHeathCategories _value,
      $Res Function(_$AboutHeathCategories) _then)
      : super(_value, (v) => _then(v as _$AboutHeathCategories));

  @override
  _$AboutHeathCategories get _value => super._value as _$AboutHeathCategories;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$AboutHeathCategories(
      categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category?>?,
    ));
  }
}

/// @nodoc

class _$AboutHeathCategories extends AboutHeathCategories {
  const _$AboutHeathCategories(final List<Category?>? categories)
      : _categories = categories,
        super._();

  final List<Category?>? _categories;
  @override
  List<Category?>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestApiState.fetchAboutHealthState(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHeathCategories &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$AboutHeathCategoriesCopyWith<_$AboutHeathCategories> get copyWith =>
      __$$AboutHeathCategoriesCopyWithImpl<_$AboutHeathCategories>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category?>? categories)
        fetchAboutHealthState,
    required TResult Function(String? message) error,
  }) {
    return fetchAboutHealthState(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
  }) {
    return fetchAboutHealthState?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchAboutHealthState != null) {
      return fetchAboutHealthState(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AboutHeathCategories value) fetchAboutHealthState,
    required TResult Function(RestApiError value) error,
  }) {
    return fetchAboutHealthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
  }) {
    return fetchAboutHealthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (fetchAboutHealthState != null) {
      return fetchAboutHealthState(this);
    }
    return orElse();
  }
}

abstract class AboutHeathCategories extends RestApiState {
  const factory AboutHeathCategories(final List<Category?>? categories) =
      _$AboutHeathCategories;
  const AboutHeathCategories._() : super._();

  List<Category?>? get categories;
  @JsonKey(ignore: true)
  _$$AboutHeathCategoriesCopyWith<_$AboutHeathCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestApiErrorCopyWith<$Res> {
  factory _$$RestApiErrorCopyWith(
          _$RestApiError value, $Res Function(_$RestApiError) then) =
      __$$RestApiErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$RestApiErrorCopyWithImpl<$Res>
    extends _$RestApiStateCopyWithImpl<$Res>
    implements _$$RestApiErrorCopyWith<$Res> {
  __$$RestApiErrorCopyWithImpl(
      _$RestApiError _value, $Res Function(_$RestApiError) _then)
      : super(_value, (v) => _then(v as _$RestApiError));

  @override
  _$RestApiError get _value => super._value as _$RestApiError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$RestApiError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RestApiError extends RestApiError {
  const _$RestApiError(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'RestApiState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestApiError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$RestApiErrorCopyWith<_$RestApiError> get copyWith =>
      __$$RestApiErrorCopyWithImpl<_$RestApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category?>? categories)
        fetchAboutHealthState,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category?>? categories)? fetchAboutHealthState,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(AboutHeathCategories value) fetchAboutHealthState,
    required TResult Function(RestApiError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(AboutHeathCategories value)? fetchAboutHealthState,
    TResult Function(RestApiError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RestApiError extends RestApiState {
  const factory RestApiError(final String? message) = _$RestApiError;
  const RestApiError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$RestApiErrorCopyWith<_$RestApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
