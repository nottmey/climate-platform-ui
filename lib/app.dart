import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:flutter/material.dart';

final client = ArtemisClient('http://localhost:8888/api');

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<GraphQLResponse<EntityById$Query>>(
              stream: client.stream(
                EntityByIdQuery(variables: EntityByIdArguments(id: '1')),
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('${snapshot.data?.data?.kw$get?.db_?.ident}');
                } else if (snapshot.hasError) {
                  return Text(
                    'error ${snapshot.error} ${snapshot.stackTrace}',
                  );
                } else {
                  return const Text('loading');
                }
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
