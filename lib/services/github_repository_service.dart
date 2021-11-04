import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result.dart';
import 'package:rxdart/rxdart.dart';

import 'github_repository_api_wrapper.dart';

enum APIError { rateLimitExceeded }

class GitHubSearchRepositoryService {
  GitHubSearchRepositoryService({@required this.apiWrapper}) {
    // Implementation based on: https://youtu.be/7O1UO5rEpRc
    // ReactiveConf 2018 - Brian Egan & Filip Hracek: Practical Rx with Flutter
    _results = _searchTerms
        .debounce((_) => TimerStream(true, Duration(milliseconds: 250)))
        .switchMap((query) async* {
      print('searching: $query');
      yield await apiWrapper.searchRepository(query);
    }); // discard previous events
  }
  final GitHubSearchRepositoryAPIWrapper apiWrapper;

  // Input stream (search terms)
  final _searchTerms = BehaviorSubject<String>();
  void searchUser(String query) => _searchTerms.add(query);

  // Output stream (search results)
  Stream<GitHubRepositoryResult> _results;
  Stream<GitHubRepositoryResult> get results => _results;

  void dispose() {
    _searchTerms.close();
  }
}
