import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:artemis/artemis.dart' as artemis;
import 'package:climate_platform_ui/amplifyconfiguration.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/models/ModelProvider.dart';
import 'package:flutter/material.dart';

final client = artemis.ArtemisClient('http://localhost:8888/api');

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

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    // Add any Amplify plugins you want to use
    // final authPlugin = AmplifyAuthCognito();
    // await Amplify.addPlugin(authPlugin);
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);
    await Amplify.addPlugin(api);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
        'Tried to reconfigure Amplify; this can occur when your app restarts on Android.',
      );
    }
  }

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
            StreamBuilder<artemis.GraphQLResponse<EntityById$Query>>(
              stream: client.stream(
                EntityByIdQuery(variables: EntityByIdArguments(id: '1')),
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('${snapshot.data?.data?.kw$get?.db_?.ident}');
                } else if (snapshot.hasError) {
                  return Text(
                    'error ${snapshot.error}',
                  );
                } else {
                  return const Text('loading');
                }
              },
            ),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () async {
                try {
                  final blog = Blog(name: 'my second todo');
                  final request = ModelMutations.create(blog);
                  final response =
                      await Amplify.API.mutate(request: request).response;

                  final createdBlog = response.data;
                  if (createdBlog == null) {
                    safePrint('errors: ${response.errors}');
                    return;
                  }
                  safePrint('Mutation result: ${createdBlog.name}');
                } on ApiException catch (e) {
                  safePrint('Mutation failed: $e');
                }
              },
              child: const Text('create blog'),
            ),
            TextButton(
              onPressed: () async {
                final response = await Amplify.API
                    .query(
                      request: ModelQueries.list(
                        Blog.classType,
                        where: Blog.NAME.contains('todo'),
                      ),
                    )
                    .response;
                final blogs = response.data;
                if (blogs == null) {
                  safePrint('errors: ${response.errors}');
                  return;
                }
                safePrint('Query result: ${blogs.items}');
              },
              child: const Text('fetch blogs'),
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
