import 'dart:convert';

import 'package:alba_corp/domain/models/payment_card.dart';
import 'package:alba_corp/domain/models/time_slot.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../core/result.dart';
import '../../domain/models/service.dart';

@injectable
class FakeApiSource {
  Future<Result<List<Service>>> getServices() async {
    try {
      final data = await rootBundle.loadString("dummy_data/services.json");
      final j = json.decode(data) as List;
      final services = j.map((e) => Service.fromJson(e)).toList();
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.success(services);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<PaymentCard>>> getSavedCards() async {
    try {
      final data = await rootBundle.loadString("dummy_data/cards.json");
      final j = json.decode(data) as List;
      final cards = j.map((e) => PaymentCard.fromJson(e)).toList();
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.success(cards);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<TimeSlot>>> getTimeSlots() async {
    try {
      final data = await rootBundle.loadString("dummy_data/time_slots.json");
      final j = json.decode(data) as List;
      final timeSlots = j.map((e) => TimeSlot.fromJson(e)).toList();
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.success(timeSlots);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> addCard() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Result.success(null);
  }
}
