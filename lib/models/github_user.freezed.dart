// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GitHubUserTearOff {
  const _$GitHubUserTearOff();

// ignore: unused_element
  _GitHubUser call({String login, String avatarUrl, String htmlUrl}) {
    return _GitHubUser(
      login: login,
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubUser = _$GitHubUserTearOff();

/// @nodoc
mixin _$GitHubUser {
  String get login;
  String get avatarUrl;
  String get htmlUrl;

  @JsonKey(ignore: true)
  $GitHubUserCopyWith<GitHubUser> get copyWith;
}

/// @nodoc
abstract class $GitHubUserCopyWith<$Res> {
  factory $GitHubUserCopyWith(
          GitHubUser value, $Res Function(GitHubUser) then) =
      _$GitHubUserCopyWithImpl<$Res>;
  $Res call({String login, String avatarUrl, String htmlUrl});
}

/// @nodoc
class _$GitHubUserCopyWithImpl<$Res> implements $GitHubUserCopyWith<$Res> {
  _$GitHubUserCopyWithImpl(this._value, this._then);

  final GitHubUser _value;
  // ignore: unused_field
  final $Res Function(GitHubUser) _then;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$GitHubUserCopyWith<$Res> implements $GitHubUserCopyWith<$Res> {
  factory _$GitHubUserCopyWith(
          _GitHubUser value, $Res Function(_GitHubUser) then) =
      __$GitHubUserCopyWithImpl<$Res>;
  @override
  $Res call({String login, String avatarUrl, String htmlUrl});
}

/// @nodoc
class __$GitHubUserCopyWithImpl<$Res> extends _$GitHubUserCopyWithImpl<$Res>
    implements _$GitHubUserCopyWith<$Res> {
  __$GitHubUserCopyWithImpl(
      _GitHubUser _value, $Res Function(_GitHubUser) _then)
      : super(_value, (v) => _then(v as _GitHubUser));

  @override
  _GitHubUser get _value => super._value as _GitHubUser;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object htmlUrl = freezed,
  }) {
    return _then(_GitHubUser(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
    ));
  }
}

/// @nodoc
class _$_GitHubUser with DiagnosticableTreeMixin implements _GitHubUser {
  const _$_GitHubUser({this.login, this.avatarUrl, this.htmlUrl});

  @override
  final String login;
  @override
  final String avatarUrl;
  @override
  final String htmlUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GitHubUser(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GitHubUser'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('htmlUrl', htmlUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitHubUser &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(htmlUrl);

  @JsonKey(ignore: true)
  @override
  _$GitHubUserCopyWith<_GitHubUser> get copyWith =>
      __$GitHubUserCopyWithImpl<_GitHubUser>(this, _$identity);
}

abstract class _GitHubUser implements GitHubUser {
  const factory _GitHubUser({String login, String avatarUrl, String htmlUrl}) =
      _$_GitHubUser;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  String get htmlUrl;
  @override
  @JsonKey(ignore: true)
  _$GitHubUserCopyWith<_GitHubUser> get copyWith;
}
