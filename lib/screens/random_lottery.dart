import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#6
// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#4

  class random_word extends StatelessWidget {
  const random_word({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
        home: const RandomWords(),
      );
    }
  }

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[]; // 단어 저장
  final _saved = <WordPair>{}; // 북마크
  final _biggerFont = const TextStyle(fontSize: 18); // 스타일

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
            tooltip: 'Saved Suggestions',
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          final alreadySaved = _saved.contains(_suggestions[index]); // 북마크는 존재 하는가?

          return ListTile(
            title: Text( // 저장된 문제 불러오기
              ('$index 번 문제' + _suggestions[index].asPascalCase),
              style: _biggerFont,
            ),
            trailing: Icon( // 좋아요
              alreadySaved ? Icons.bookmark : Icons.bookmark_border,
              color: alreadySaved ? Colors.red : null,
              semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
            ),
            onTap: (

                ) {
              setState(() { // 상태가 변경되었음을 프레임워크에 알림
                if (alreadySaved) {
                  _saved.remove(_suggestions[index]);
                } else {
                  _saved.add(_suggestions[index]);
                }
              });
            },
          );
        },
      ),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      // Add lines from here...
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
                (pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ), // ...to here.
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}