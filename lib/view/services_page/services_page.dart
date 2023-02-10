import 'package:alba_corp/components/navigation.dart';
import 'package:alba_corp/core/di.dart';
import 'package:alba_corp/core/status.dart';
import 'package:alba_corp/view/schedule_page/schedule_page.dart';
import 'package:alba_corp/view/services_page/cubit/services_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ServicesPageCubit>(),
      child: const _ServicesPageLayout(),
    );
  }
}

class _ServicesPageLayout extends StatelessWidget {
  const _ServicesPageLayout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services"),
        centerTitle: true,
      ),
      body: BlocBuilder<ServicesPageCubit, ServicesPageState>(
        builder: (context, state) {
          if (state.getServicesStatus == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.separated(
              itemCount: state.services.length,
              padding: const EdgeInsets.only(
                  left: 29, right: 29, top: 66, bottom: 66),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 31,
                  ),
              itemBuilder: (context, index) {
                final service = state.services[index];
                return ExpansionTile(
                  tilePadding: const EdgeInsets.only(top: 20, bottom: 20),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(service.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ),
                  leading: Image.asset(
                    service.image,
                    height: 81,
                    width: 80,
                    fit: BoxFit.fitHeight,
                  ),
                  subtitle: Text(service.description ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: const Color(0xff5E5858))),
                  shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xFFD9D9D9), width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  collapsedShape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xFFD9D9D9), width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  children: service.subServices.mapIndexed((i, e) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {
                          navigateTo(context, const SchedulePage());
                        },
                        child: SizedBox(
                          height: 50,
                          child: Stack(children: [
                            const SizedBox.expand(),
                            Positioned(
                              left: 21,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7)),
                                      border: Border.fromBorderSide(BorderSide(
                                          color: Color(0xFFD9D9D9)))),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text(e.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ))),
                            ),
                            Positioned(
                              top: 7,
                              bottom: 7,
                              left: 0,
                              child: Container(
                                width: 43,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Center(
                                      child: Text(
                                          (i + 1).toString().padLeft(2, "0"),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    );
                  }).toList(),
                );
              });
        },
      ),
    );
  }
}

extension I<T> on List<T> {
  Iterable<E> mapIndexed<E>(E Function(int index, T item) f) sync* {
    for (var index = 0; index < length; index++) {
      yield f(index, this[index]);
    }
  }
}
