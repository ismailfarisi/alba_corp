import 'package:alba_corp/components/button.dart';
import 'package:alba_corp/components/navigation.dart';
import 'package:alba_corp/components/snackbar.dart';
import 'package:alba_corp/core/status.dart';
import 'package:alba_corp/view/saved_cards_page/saved_cards_page.dart';
import 'package:alba_corp/view/schedule_page/cubit/schedule_page_cubit.dart';
import 'package:alba_corp/view/schedule_page/widget/calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SchedulePageCubit>(),
      child: const _SchedulePageLayout(),
    );
  }
}

class _SchedulePageLayout extends StatelessWidget {
  const _SchedulePageLayout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule"),
        centerTitle: true,
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 43, bottom: 46),
                child: Text(
                  "Select your appointment time",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: SizedBox(
                  height: 394,
                  child: CustomCalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2030),
                      onDateChanged: (date) {
                        context.read<SchedulePageCubit>().getTimeSlots(date);
                      }),
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          sliver: BlocBuilder<SchedulePageCubit, SchedulePageState>(
            builder: (context, state) {
              if (state.getTimeSlotsStatus == Status.loading) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return SliverGrid.builder(
                  gridDelegate: _timeSlotGridDelegate,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final timeSlot = state.timeSlots[index];
                    BoxDecoration? decoration;
                    TextStyle? style;
                    if (timeSlot.id == state.selectedTimeSlotId) {
                      decoration = BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      );
                      style = Theme.of(context).textTheme.bodyMedium?.apply(
                          color: Colors.white,
                          fontWeightDelta: 5,
                          fontSizeDelta: -2);
                    } else {
                      decoration = BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      );
                      style = Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.apply(fontWeightDelta: 5, fontSizeDelta: -2);
                    }

                    return InkWell(
                      onTap: () {
                        context
                            .read<SchedulePageCubit>()
                            .selectTimeSlot(timeSlot.id);
                      },
                      child: Container(
                        decoration: decoration,
                        child: Center(
                            child: Text(
                          "${timeSlot.timeSlotFrom} - ${timeSlot.timeSlotTo}",
                          style: style,
                        )),
                      ),
                    );
                  });
            },
          ),
        ),
        SliverToBoxAdapter(
          child: BlocSelector<SchedulePageCubit, SchedulePageState, int?>(
            selector: (state) {
              return state.selectedTimeSlotId;
            },
            builder: (context, selectedTimeSlotId) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: AppButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170, 48),
                        backgroundColor: selectedTimeSlotId != null
                            ? Theme.of(context).primaryColor
                            : Colors.grey),
                    onPressed: () {
                      if (selectedTimeSlotId != null) {
                        navigateTo(context, const SavedCardsPage());
                      } else {
                        showSnackbar(context, "Please select a time slot");
                      }
                    },
                    label: "Next"),
              );
            },
          ),
        )
      ]),
    );
  }
}

class _TimeSlotGridDelegate extends SliverGridDelegate {
  const _TimeSlotGridDelegate();

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    final double tileWidth = (constraints.crossAxisExtent - (3 - 1) * 10) / 3;
    return SliverGridRegularTileLayout(
      childCrossAxisExtent: tileWidth,
      childMainAxisExtent: 40,
      crossAxisCount: 3,
      crossAxisStride: tileWidth + 10,
      mainAxisStride: 50,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(_TimeSlotGridDelegate oldDelegate) => false;
}

const _TimeSlotGridDelegate _timeSlotGridDelegate = _TimeSlotGridDelegate();
