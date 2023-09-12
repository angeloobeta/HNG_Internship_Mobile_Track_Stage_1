import 'package:hng_internship_mobile_track_stage_1/model/utilities/imports/generalImport.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BaseModel extends ChangeNotifier {
  // webViewController
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://github.com'));

  // launch Github from viewView
  onLaunchGitHub(context) {
    print("Launch GitHub.com");
    Navigator.of(context).pushNamed('/githubPage');
  }
}
