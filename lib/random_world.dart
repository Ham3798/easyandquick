import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#6
// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#4

class random_world extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();  // DELETE

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];                 // 단어 저장
  final _saved = <WordPair>{};                       // 좋아요
  final _biggerFont = const TextStyle(fontSize: 18); // 스타일
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        final alreadySaved = _saved.contains(_suggestions[index]); // 좋아요 존재하는가?
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border, // 하트
            color: alreadySaved ? Colors.red : null,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
          ),
          onTap: () {
            setState(() { // setState() : 상태가 변경되었음을 프레임워크에 알림
              if (alreadySaved) {
                _saved.remove(_suggestions[index]);
              } else {
                _saved.add(_suggestions[index]);
              }
            });                // to here.
          },
        );
      },
    );
  }
}