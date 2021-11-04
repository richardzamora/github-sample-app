import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/app/github_search_repo_delegate.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_repository_api_wrapper.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_repository_service.dart';
import 'package:github_search_flutter_client_rxdart_example/widgets/buttons.dart';

import '../app/github_search_delegate.dart';
import '../models/github_user.dart';
import '../services/github_search_api_wrapper.dart';
import '../services/github_search_service.dart';

class HomePage extends StatelessWidget {
  void _showSearch(BuildContext context) async {
    final searchService =
        GitHubSearchService(apiWrapper: GitHubSearchAPIWrapper());
    final user = await showSearch<GitHubUser>(
      context: context,
      delegate: GitHubSearchDelegate(searchService),
    );
    searchService.dispose();
    print(user);
  }

  void _showSearchRepo(BuildContext context) async {
    final searchService = GitHubSearchRepositoryService(
        apiWrapper: GitHubSearchRepositoryAPIWrapper());
    final user = await showSearch<GithubRepository>(
      context: context,
      delegate: GitHubSearchRepoDelegate(searchService),
    );
    searchService.dispose();
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search'),
      ),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.all(10),
                child: ButtonRounded(
                    text: "Search Users", onTap: () => _showSearch(context))),
            Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.all(10),
                child: ButtonRounded(
                    text: "Search Repositories",
                    onTap: () => _showSearchRepo(context))),
          ]),
    );
  }
}
