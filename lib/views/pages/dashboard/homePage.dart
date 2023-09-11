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
                  height: sS(context).h * 0.35,
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                ),
              )
            ]));
  }
}
