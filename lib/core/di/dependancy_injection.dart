import 'package:car_rental/core/helpers/local_storage.dart';
import 'package:car_rental/core/networking/dio_factory.dart';
import 'package:car_rental/features/home/presentation/cubit/navigation_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio $ ApiService

  Dio dio = DioFactory.getDio();
  LocalStorage storage = LocalStorage();

  getIt.registerFactory<NavigationCubit>(() => NavigationCubit());
}
