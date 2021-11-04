import 'dart:convert';

import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:http/http.dart' as http;

import '../models/github_search_result.dart';

class GitHubSearchRepositoryAPIWrapper {
  Uri searchUsernameUri(String reponame) => Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: 'search/repositories',
        queryParameters: {'q': reponame},
      );

  Future<GitHubRepositoryResult> searchRepository(String reponame) async {
    final uri = searchUsernameUri(reponame);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> items = data['items'];
      if (items?.isNotEmpty ?? false) {
        final users =
            items.map((item) => GithubRepository.fromJson(item)).toList();
        return GitHubRepositoryResult(users);
      }
      return GitHubRepositoryResult.error(GitHubAPIError.parseError);
    }
    if (response.statusCode == 403) {
      return GitHubRepositoryResult.error(GitHubAPIError.rateLimitExceeded);
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    return GitHubRepositoryResult.error(GitHubAPIError.unknownError);
  }
}
