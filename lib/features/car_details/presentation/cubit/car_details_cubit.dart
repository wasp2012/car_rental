import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'car_details_state.dart';

class CarDetailsCubit extends Cubit<CarDetailsState> {
  CarDetailsCubit() : super(CarDetailsInitial());
}
