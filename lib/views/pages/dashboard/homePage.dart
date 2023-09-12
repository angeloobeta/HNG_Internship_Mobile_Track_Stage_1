import 'package:hng_internship_mobile_track_stage_1/model/utilities/imports/generalImport.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BaseModel>.reactive(
        viewModelBuilder: () => BaseModel(),
        builder: (context, model, child) => BaseUi(safeTop: false, children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: sS(context).h * 0.30,
                  decoration: BoxDecoration(
                      color: gray3.withOpacity(0.9),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 10),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const GeneralTextDisplay("Ifeanyichukwu Obeta", white,
                            1, 25, FontWeight.bold, "Slack Name"),
                        S(h: 10),
                        const GeneralTextDisplay("Mobile Engineer", black, 1,
                            20, FontWeight.bold, "Slack Name"),
                        S(h: 40),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 5, backgroundColor: white),
                            onPressed: () => {model.onLaunchGitHub(context)},
                            child: const GeneralTextDisplay("Open GitHub",
                                green, 1, 25, FontWeight.bold, "Slack Name"))
                      ],
                    ),
                  ),
                ),
              )
            ]));
  }
}
