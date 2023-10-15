import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';

class ProfilePage extends AppPageWidget {
  const ProfilePage({super.key});

  // ERROR | StateMachineBloc | Error signing in: InvalidUserPoolConfigurationException {
  //   "message": "No sign in redirect URLs registered for base URL: http://localhost:52595/. Add a sign in redirect URL on that starts with \"http://localhost:52595/\". See the docs for more info: https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/"
  // }

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const AppHeaderSliver(titleFallback: 'Profile'),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: FutureBuilder(
            future: Amplify.Auth.getCurrentUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('data: ${snapshot.data}');
              }
              if (snapshot.hasError) {
                return Text('error: ${snapshot.error}');
              }
              return const Text('loading');
            },
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: FilledButton(
            onPressed: () async {
              final result = await Amplify.Auth.signOut();
              if (result is CognitoCompleteSignOut) {
                safePrint('Sign out completed successfully: $result');
              } else if (result is CognitoFailedSignOut) {
                safePrint(
                  'Error signing user out: ${result.exception.message}',
                );
              }
            },
            child: const Text('Logout'),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: FutureBuilder(
            future: Amplify.Auth.fetchAuthSession(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('signedIn: ${snapshot.data}');
              }
              if (snapshot.hasError) {
                return Text('error: ${snapshot.error}');
              }
              return const Text('loading');
            },
          ),
        ),
      ),
    ];
  }
}
