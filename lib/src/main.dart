import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:jemapp/src/second_screen.dart';

void main() => runApp(new RandomWords());

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  // Add the next two lines.

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final List<WordPair> _suggestions = <WordPair>[];

  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child:

      Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom:50.0),
                child: FlutterLogo(),
              ),
              ListTile(title: Text("Home News",style: TextStyle(fontSize: 30,color: Colors.blue),),onTap: ()=> debugPrint("f"),),
              ListTile(title: Text("New News",style: TextStyle(fontSize: 30,color: Colors.blue),),onTap: ()=> debugPrint("f"),),
              ListTile(title: Text("Old News",style: TextStyle(fontSize: 30,color: Colors.blue),),onTap: ()=> debugPrint("f"),),

            ],
          ),
        ),
      ),),
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int i) {
        final int index = i ~/ 2;

        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      leading: CircleAvatar(
        child: FlutterLogo(
          colors: Colors.red,
        ), //Text(pair.toString().substring(0,1).toUpperCase()),
      ),
      subtitle: Text('my status'),
      title: Text(
        pair.asPascalCase,
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => SecondScreen(pair)));
      },
    );
  }
}
