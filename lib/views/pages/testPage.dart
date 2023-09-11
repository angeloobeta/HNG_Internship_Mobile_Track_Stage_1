import '../../model/utilities/imports/generalImport.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          elevation: 24.0,
          child: Container(
            color: red,
            child: const Column(
              children: [
                // DrawerHeader(
                //   child: null,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
