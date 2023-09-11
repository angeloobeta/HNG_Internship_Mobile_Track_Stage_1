import 'package:hng_internship_mobile_track_stage_1/model/utilities/imports/generalImport.dart';

class BaseModel extends ChangeNotifier {
  // is drawerItem selected
  bool isSelected = false;

  //Label keys
  static LabeledGlobalKey walletKey = LabeledGlobalKey("wallet");
  static LabeledGlobalKey restaurantKey = LabeledGlobalKey("restaurant");
  static LabeledGlobalKey cartKey = LabeledGlobalKey("cart");
  static LabeledGlobalKey profileKey = LabeledGlobalKey("profile");

  List<(String, LabeledGlobalKey)> drawerItems = [
    ("Wallet", walletKey),
    ("Restaurant", restaurantKey),
    ("Cart", cartKey),
    ("Profile", profileKey)
  ];

  String selectedIndex = "Wallet";

  RenderBox? renderBox;
  late double? startYPosition = 0;

  initialise() {
    renderBox =
        drawerItems[0].$2.currentContext!.findRenderObject() as RenderBox?;
    startYPosition = renderBox!.localToGlobal(Offset.zero).dy;
    print(startYPosition);
    notifyListeners();
  }

  onTap(index) {
    !(isSelected) == false ? true : false;
    selectedIndex = index;
    switch (selectedIndex) {
      case "Wallet":
        renderBox =
            drawerItems[0].$2.currentContext!.findRenderObject() as RenderBox?;
        print("Tell us the height ${renderBox!.size.height}");
        print("Tell us about the width ${renderBox!.size.width}");
        break;
      case "Restaurant":
        renderBox =
            drawerItems[1].$2.currentContext!.findRenderObject() as RenderBox?;
        print("Tell us the height ${renderBox!.size.height}");
        print("Tell us about the width ${renderBox!.size.width}");
        break;
      case "Cart":
        renderBox =
            drawerItems[2].$2.currentContext!.findRenderObject() as RenderBox?;
        print("Tell us the height ${renderBox!.size.height}");
        print("Tell us about the width ${renderBox!.size.width}");
        break;
      case "Profile":
        renderBox =
            drawerItems[3].$2.currentContext!.findRenderObject() as RenderBox?;
        print("Tell us the height ${renderBox!.size.height}");
        print("Tell us about the width ${renderBox!.size.width}");
        break;
    }
    startYPosition = renderBox!.localToGlobal(Offset.zero).dy;
    print(startYPosition);
    notifyListeners();
  }

  //
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext? scaffoldContext;
  void setScaffoldContext(BuildContext context) {
    scaffoldContext = context;
  }

  void openDrawer() {
    if (scaffoldContext != null) {
      Scaffold.of(scaffoldContext!).openDrawer();
    }
  }
}
