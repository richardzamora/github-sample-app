// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GithubRepositoryTearOff {
  const _$GithubRepositoryTearOff();

// ignore: unused_element
  _GithubRepository call(
      {GitHubUser author,
      String name,
      String fullName,
      String description,
      String language,
      String score}) {
    return _GithubRepository(
      author: author,
      name: name,
      fullName: fullName,
      description: description,
      language: language,
      score: score,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GithubRepository = _$GithubRepositoryTearOff();

/// @nodoc
mixin _$GithubRepository {
  GitHubUser get author;
  String get name;
  String get fullName;
  String get description;
  String get language;
  String get score;

  @JsonKey(ignore: true)
  $GithubRepositoryCopyWith<GithubRepository> get copyWith;
}

/// @nodoc
abstract class $GithubRepositoryCopyWith<$Res> {
  factory $GithubRepositoryCopyWith(
          GithubRepository value, $Res Function(GithubRepository) then) =
      _$GithubRepositoryCopyWithImpl<$Res>;
  $Res call(
      {GitHubUser author,
      String name,
      String fullName,
      String description,
      String language,
      String score});

  $GitHubUserCopyWith<$Res> get author;
}

/// @nodoc
class _$GithubRepositoryCopyWithImpl<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  _$GithubRepositoryCopyWithImpl(this._value, this._then);

  final GithubRepository _value;
  // ignore: unused_field
  final $Res Function(GithubRepository) _then;

  @override
  $Res call({
    Object author = freezed,
    Object name = freezed,
    Object fullName = freezed,
    Object description = freezed,
    Object language = freezed,
    Object score = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as GitHubUser,
      name: name == freezed ? _value.name : name as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      description:
          description == freezed ? _value.description : description as String,
      language: language == freezed ? _value.language : language as String,
      score: score == freezed ? _value.score : score as String,
    ));
  }

  @override
  $GitHubUserCopyWith<$Res> get author {
    if (_value.author == null) {
      return null;
    }
    return $GitHubUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$GithubRepositoryCopyWith<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  factory _$GithubRepositoryCopyWith(
          _GithubRepository value, $Res Function(_GithubRepository) then) =
      __$GithubRepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {GitHubUser author,
      String name,
      String fullName,
      String description,
      String language,
      String score});

  @override
  $GitHubUserCopyWith<$Res> get author;
}

/// @nodoc
class __$GithubRepositoryCopyWithImpl<$Res>
    extends _$GithubRepositoryCopyWithImpl<$Res>
    implements _$GithubRepositoryCopyWith<$Res> {
  __$GithubRepositoryCopyWithImpl(
      _GithubRepository _value, $Res Function(_GithubRepository) _then)
      : super(_value, (v) => _then(v as _GithubRepository));

  @override
  _GithubRepository get _value => super._value as _GithubRepository;

  @override
  $Res call({
    Object author = freezed,
    Object name = freezed,
    Object fullName = freezed,
    Object description = freezed,
    Object language = freezed,
    Object score = freezed,
  }) {
    return _then(_GithubRepository(
      author: author == freezed ? _value.author : author as GitHubUser,
      name: name == freezed ? _value.name : name as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      description:
          description == freezed ? _value.description : description as String,
      language: language == freezed ? _value.language : language as String,
      score: score == freezed ? _value.score : score as String,
    ));
  }
}

/// @nodoc
class _$_GithubRepository implements _GithubRepository {
  const _$_GithubRepository(
      {this.author,
      this.name,
      this.fullName,
      this.description,
      this.language,
      this.score});

  @override
  final GitHubUser author;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final String description;
  @override
  final String language;
  @override
  final String score;

  @override
  String toString() {
    return 'GithubRepository(author: $author, name: $name, fullName: $fullName, description: $description, language: $language, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubRepository &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(score);

  @JsonKey(ignore: true)
  @override
  _$GithubRepositoryCopyWith<_GithubRepository> get copyWith =>
      __$GithubRepositoryCopyWithImpl<_GithubRepository>(this, _$identity);
}

abstract class _GithubRepository implements GithubRepository {
  const factory _GithubRepository(
      {GitHubUser author,
      String name,
      String fullName,
      String description,
      String language,
      String score}) = _$_GithubRepository;

  @override
  GitHubUser get author;
  @override
  String get name;
  @override
  String get fullName;
  @override
  String get description;
  @override
  String get language;
  @override
  String get score;
  @override
  @JsonKey(ignore: true)
  _$GithubRepositoryCopyWith<_GithubRepository> get copyWith;
}
