import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Climate Platform UI'),
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StreamBuilder<GraphQLResponse<Databases$Query>>(
                stream: getIt<ArtemisClient>().stream(DatabasesQuery()),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('${snapshot.data?.data?.databases?.join(',')}');
                  } else if (snapshot.hasError) {
                    return Text(
                      'error ${snapshot.error}',
                    );
                  } else {
                    return const Text('loading');
                  }
                },
              ),
              StreamBuilder<GraphQLResponse<Data$Query>>(
                stream: getIt<ArtemisClient>().stream(
                  DataQuery(
                    variables: DataArguments(database: 'datomic-docs-tutorial'),
                  ),
                ),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: snapshot.data?.data?.list
                              ?.map(
                                (e) => Text(
                                  e.data ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              )
                              .toList() ??
                          [],
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                      'error ${snapshot.error}',
                    );
                  } else {
                    return const Text('loading');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
