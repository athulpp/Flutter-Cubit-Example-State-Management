import 'package:bloctimes/model/data_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitsStates extends Equatable {}

class IntialState extends CubitsStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitsStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadingState extends CubitsStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadedState extends CubitsStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object?> get props => [places];
}


class DetailState extends CubitsStates {
  DetailState(this.place);
  final DataModel place;
  @override
  // TODO: implement props
  List<Object?> get props => [place];
}