import 'package:alba_corp/core/status.dart';

import 'package:alba_corp/domain/usecases/services/get_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/service.dart';

part 'services_page_state.dart';
part 'services_page_cubit.freezed.dart';

@injectable
class ServicesPageCubit extends Cubit<ServicesPageState> {
  ServicesPageCubit(this._getServicesUsecase)
      : super(const ServicesPageState()) {
    getServices();
  }

  final GetServicesUsecase _getServicesUsecase;

  Future<void> getServices() async {
    emit(state.copyWith(getServicesStatus: Status.loading));
    final result = await _getServicesUsecase();
    result.when(success: (data) {
      emit(state.copyWith(getServicesStatus: Status.success, services: data));
    }, error: (e) {
      emit(state.copyWith(getServicesStatus: Status.error));
    });
  }
}
