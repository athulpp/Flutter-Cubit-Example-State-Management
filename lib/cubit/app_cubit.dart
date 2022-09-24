import 'package:bloc/bloc.dart';
import 'package:bloctimes/cubit/app_cubit_state.dart';
import 'package:bloctimes/model/data_model.dart';
import 'package:bloctimes/services/data_servixes.dart';

class AppCubit extends Cubit<CubitsStates> {
  AppCubit({required this.data}) : super(IntialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
