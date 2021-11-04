import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_repository_service.dart';

import '../models/github_search_result.dart';

class GitHubSearchRepoDelegate extends SearchDelegate<GithubRepository> {
  GitHubSearchRepoDelegate(this.searchRepositoryService);
  final GitHubSearchRepositoryService searchRepositoryService;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // search-as-you-type if enabled
    searchRepositoryService.searchUser(query);
    return buildMatchingSuggestions(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // always search if submitted
    searchRepositoryService.searchUser(query);
    return buildMatchingSuggestions(context);
  }

  Widget buildMatchingSuggestions(BuildContext context) {
    final Map<GitHubAPIError, String> errorMessages = {
      GitHubAPIError.parseError: 'Error reading data from the API',
      GitHubAPIError.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIError.unknownError: 'Unknown error',
    };
    // then return results
    return StreamBuilder<GitHubRepositoryResult>(
      stream: searchRepositoryService.results,
      builder: (context, AsyncSnapshot<GitHubRepositoryResult> snapshot) {
        if (snapshot.hasData) {
          final GitHubRepositoryResult result = snapshot.data;
          return result.when(
            (users) => GridView.builder(
              itemCount: users.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return GitHubUserSearchRepositoryResultTile(
                  repo: users[index],
                  index: index,
                  onSelected: (value) => close(context, value),
                );
              },
            ),
            error: (error) => SearchPlaceholder(title: errorMessages[error]),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return query.isEmpty
        ? []
        : <Widget>[
            IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
          ];
  }
}

class GitHubUserSearchRepositoryResultTile extends StatelessWidget {
  const GitHubUserSearchRepositoryResultTile(
      {@required this.repo, @required this.onSelected, @required this.index});

  final GithubRepository repo;
  final ValueChanged<GithubRepository> onSelected;
  final int index;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () => onSelected(repo),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(index % 4 == 1 || index % 4 == 2 ? 5 : 20),
            topRight:
                Radius.circular(index % 4 == 1 || index % 4 == 2 ? 20 : 5),
            bottomLeft:
                Radius.circular(index % 4 == 1 || index % 4 == 2 ? 20 : 5),
            bottomRight:
                Radius.circular(index % 4 == 1 || index % 4 == 2 ? 5 : 20),
          ),
          color: Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 0.5),
                blurRadius: 0.5,
                spreadRadius: 0.5)
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 5),
                  ClipPath(
                    clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    child: Container(
                      child: Image.network(
                        repo.author.avatarUrl,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      repo.author.login,
                      style: theme.textTheme.headline6,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3.0),
            Container(
              height: 42,
              child: Center(
                child: Text(
                  repo.name,
                  style: theme.textTheme.headline6.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              height: 82,
              child: Text(
                repo.description == null ? "None" : repo.description,
                style: theme.textTheme.headline6.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                maxLines: 5,
              ),
            ),
            SizedBox(height: 5.0),
            Container(
                height: 25,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Text(
                          repo.score,
                          style:
                              theme.textTheme.headline6.copyWith(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.code),
                        Text(
                          repo.language == null ? "None" : repo.language,
                          style:
                              theme.textTheme.headline6.copyWith(fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class SearchPlaceholder extends StatelessWidget {
  const SearchPlaceholder({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Text(
        title,
        style: theme.textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}
