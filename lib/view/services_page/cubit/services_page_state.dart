part of 'services_page_cubit.dart';

@freezed
class ServicesPageState with _$ServicesPageState {
  const factory ServicesPageState({
    @Default(Status.init) Status getServicesStatus,
    @Default([]) List<Service> services,
  }) = _ServicesPageState;
}
