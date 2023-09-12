import 'package:webview_flutter/webview_flutter.dart';

import '../../../model/utilities/imports/generalImport.dart';

class GitHubPage extends StatelessWidget {
  const GitHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BaseModel>.reactive(
        onViewModelReady: (model) => model.controller,
        viewModelBuilder: () => BaseModel(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: GeneralIconDisplay(
                      Icons.arrow_back_ios_sharp, white, UniqueKey(), 20),
                ),
                backgroundColor: black,
                title: const GeneralTextDisplay(
                    'GitHub', white, 1, 20, FontWeight.bold, "")),
            body: WebViewWidget(controller: model.controller),
          );
        });
  }
}
