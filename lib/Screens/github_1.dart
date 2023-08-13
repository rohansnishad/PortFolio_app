import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class github extends StatelessWidget {
  final String githubUsername = 'https://github.com/rohansnishad';
  final String githubAccessToken = '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';//github access token

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GitHub Account Fetcher'),
        ),
        body: Center(
          child: FutureBuilder<GitHubUser>(
            future: fetchGitHubUser(githubUsername, githubAccessToken),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final user = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Use null-aware operator ?. to handle null avatarUrl
                    user?.avatarUrl != null
                        ? Image.network(user!.avatarUrl)
                        : Container(),
                    SizedBox(height: 16),
                    Text('Username: ${user?.login ?? "N/A"}'), // Provide a default value if login is null
                    Text('GitHub ID: ${user?.id  ?? "N/A"}'), // Provide a default value if id is null
                    ElevatedButton(
                      onPressed: () {
                        // Open the user's GitHub profile in a browser
                        // (you can use the url_launcher package for this)
                      },
                      child: Text('View Profile'),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class GitHubUser {
  final String? login;
  final int id;
  final String avatarUrl;
  final String htmlUrl;

  GitHubUser({required this.login, required this.id, required this.avatarUrl, required this.htmlUrl});

  factory GitHubUser.fromJson(Map<String, dynamic> json) {
    return GitHubUser(
      login: json['login'],
      id: json['id'],
      avatarUrl: json['avatarUrl'],
      htmlUrl: json['html_url'],
    );
  }
}

Future<GitHubUser> fetchGitHubUser(String username, String token) async {
  final response = await http.get(
    Uri.parse('https://api.github.com/users/$username'),
    headers: {
      'Authorization': 'Bearer $token',
    },
  );

  if (response.statusCode == 200) {
    return GitHubUser.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to fetch GitHub user');
  }
}
