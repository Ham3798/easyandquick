// import 'dart:js';
// import 'package:flutter/material.dart';
//
// void load_problem() {
//   Navigator.of(context).push(
//     // Add lines from here...
//     MaterialPageRoute<void>(
//       builder: (context) {
//         final tiles = _saved.map(
//               (pair) {
//             return ListTile(
//               title: Text(
//                 pair.asPascalCase,
//                 style: _biggerFont,
//               ),
//             );
//           },
//         );
//         final divided = tiles.isNotEmpty
//             ? ListTile.divideTiles(
//           context: context,
//           tiles: tiles,
//         ).toList()
//             : <Widget>[];
//
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Saved Suggestions'),
//           ),
//           body: ListView(children: divided),
//         );
//       },
//     ), // ...to here.
//   );
// }