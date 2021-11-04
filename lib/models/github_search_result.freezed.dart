// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GitHubSearchResultTearOff {
  const _$GitHubSearchResultTearOff();

// ignore: unused_element
  Data call(List<GitHubUser> user) {
    return Data(
      user,
    );
  }

// ignore: unused_element
  Error error(GitHubAPIError error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubSearchResult = _$GitHubSearchResultTearOff();

/// @nodoc
mixin _$GitHubSearchResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    @required TResult error(GitHubAPIError error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GitHubSearchResultCopyWith<$Res> {
  factory $GitHubSearchResultCopyWith(
          GitHubSearchResult value, $Res Function(GitHubSearchResult) then) =
      _$GitHubSearchResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GitHubSearchResultCopyWithImpl<$Res>
    implements $GitHubSearchResultCopyWith<$Res> {
  _$GitHubSearchResultCopyWithImpl(this._value, this._then);

  final GitHubSearchResult _value;
  // ignore: unused_field
  final $Res Function(GitHubSearchResult) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<GitHubUser> user});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Data(
      user == freezed ? _value.user : user as List<GitHubUser>,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(this.user) : assert(user != null);

  @override
  final List<GitHubUser> user;

  @override
  String toString() {
    return 'GitHubSearchResult(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    @required TResult error(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements GitHubSearchResult {
  const factory Data(List<GitHubUser> user) = _$Data;

  List<GitHubUser> get user;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({GitHubAPIError error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Error(
      error == freezed ? _value.error : error as GitHubAPIError,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.error) : assert(error != null);

  @override
  final GitHubAPIError error;

  @override
  String toString() {
    return 'GitHubSearchResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    @required TResult error(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubUser> user), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GitHubSearchResult {
  const factory Error(GitHubAPIError error) = _$Error;

  GitHubAPIError get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}

/// @nodoc
class _$GitHubRepositoryResultTearOff {
  const _$GitHubRepositoryResultTearOff();

// ignore: unused_element
  DataRepo call(List<GithubRepository> repository) {
    return DataRepo(
      repository,
    );
  }

// ignore: unused_element
  ErrorRepo error(GitHubAPIError error) {
    return ErrorRepo(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubRepositoryResult = _$GitHubRepositoryResultTearOff();

/// @nodoc
mixin _$GitHubRepositoryResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    @required TResult error(GitHubAPIError error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(DataRepo value), {
    @required TResult error(ErrorRepo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(DataRepo value), {
    TResult error(ErrorRepo value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GitHubRepositoryResultCopyWith<$Res> {
  factory $GitHubRepositoryResultCopyWith(GitHubRepositoryResult value,
          $Res Function(GitHubRepositoryResult) then) =
      _$GitHubRepositoryResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GitHubRepositoryResultCopyWithImpl<$Res>
    implements $GitHubRepositoryResultCopyWith<$Res> {
  _$GitHubRepositoryResultCopyWithImpl(this._value, this._then);

  final GitHubRepositoryResult _value;
  // ignore: unused_field
  final $Res Function(GitHubRepositoryResult) _then;
}

/// @nodoc
abstract class $DataRepoCopyWith<$Res> {
  factory $DataRepoCopyWith(DataRepo value, $Res Function(DataRepo) then) =
      _$DataRepoCopyWithImpl<$Res>;
  $Res call({List<GithubRepository> repository});
}

/// @nodoc
class _$DataRepoCopyWithImpl<$Res>
    extends _$GitHubRepositoryResultCopyWithImpl<$Res>
    implements $DataRepoCopyWith<$Res> {
  _$DataRepoCopyWithImpl(DataRepo _value, $Res Function(DataRepo) _then)
      : super(_value, (v) => _then(v as DataRepo));

  @override
  DataRepo get _value => super._value as DataRepo;

  @override
  $Res call({
    Object repository = freezed,
  }) {
    return _then(DataRepo(
      repository == freezed
          ? _value.repository
          : repository as List<GithubRepository>,
    ));
  }
}

/// @nodoc
class _$DataRepo implements DataRepo {
  const _$DataRepo(this.repository) : assert(repository != null);

  @override
  final List<GithubRepository> repository;

  @override
  String toString() {
    return 'GitHubRepositoryResult(repository: $repository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataRepo &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repository);

  @JsonKey(ignore: true)
  @override
  $DataRepoCopyWith<DataRepo> get copyWith =>
      _$DataRepoCopyWithImpl<DataRepo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    @required TResult error(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(repository);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(repository);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(DataRepo value), {
    @required TResult error(ErrorRepo value),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(DataRepo value), {
    TResult error(ErrorRepo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DataRepo implements GitHubRepositoryResult {
  const factory DataRepo(List<GithubRepository> repository) = _$DataRepo;

  List<GithubRepository> get repository;
  @JsonKey(ignore: true)
  $DataRepoCopyWith<DataRepo> get copyWith;
}

/// @nodoc
abstract class $ErrorRepoCopyWith<$Res> {
  factory $ErrorRepoCopyWith(ErrorRepo value, $Res Function(ErrorRepo) then) =
      _$ErrorRepoCopyWithImpl<$Res>;
  $Res call({GitHubAPIError error});
}

/// @nodoc
class _$ErrorRepoCopyWithImpl<$Res>
    extends _$GitHubRepositoryResultCopyWithImpl<$Res>
    implements $ErrorRepoCopyWith<$Res> {
  _$ErrorRepoCopyWithImpl(ErrorRepo _value, $Res Function(ErrorRepo) _then)
      : super(_value, (v) => _then(v as ErrorRepo));

  @override
  ErrorRepo get _value => super._value as ErrorRepo;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ErrorRepo(
      error == freezed ? _value.error : error as GitHubAPIError,
    ));
  }
}

/// @nodoc
class _$ErrorRepo implements ErrorRepo {
  const _$ErrorRepo(this.error) : assert(error != null);

  @override
  final GitHubAPIError error;

  @override
  String toString() {
    return 'GitHubRepositoryResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorRepo &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorRepoCopyWith<ErrorRepo> get copyWith =>
      _$ErrorRepoCopyWithImpl<ErrorRepo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    @required TResult error(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GithubRepository> repository), {
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(DataRepo value), {
    @required TResult error(ErrorRepo value),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(DataRepo value), {
    TResult error(ErrorRepo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRepo implements GitHubRepositoryResult {
  const factory ErrorRepo(GitHubAPIError error) = _$ErrorRepo;

  GitHubAPIError get error;
  @JsonKey(ignore: true)
  $ErrorRepoCopyWith<ErrorRepo> get copyWith;
}
