import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_user.dart';

part 'github_repository.freezed.dart';

@freezed
abstract class GithubRepository with _$GithubRepository {
  const factory GithubRepository(
      {GitHubUser author,
      String name,
      String fullName,
      String description,
      String language,
      String score}) = _GithubRepository;

  factory GithubRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    final author = GitHubUser.fromJson(json['owner']);
    if (author != null) {
      final name = json['name'];
      final fullName = json['full_name'];
      final description = json["description"];
      final language = json["language"];
      final scoreNum = json["stargazers_count"];
      String score = "0";
      if (scoreNum is int) {
        if (scoreNum >= 1000)
          score = "${(scoreNum / 1000).round()}k";
        else {
          score = "$scoreNum";
        }
      }

      return GithubRepository(
        author: author,
        name: name,
        fullName: fullName,
        description: description,
        language: language,
        score: score,
      );
    }
    return null;
  }
}
