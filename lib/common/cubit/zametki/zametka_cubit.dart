import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/model/zametki.dart';
import '../../../data/repository/zametki_repo._impl.dart';

part 'zametki_state.dart';

class ZametkiCubit extends Cubit<ZametkiState> {
  ZametkiCubit() : super(ZametkiInitial());

  List<Zametki> zametki = [];
  String message = "";

  Future<void> fetchZametki() async {
    try {
      zametki =
          await ZametkiRepositoryImpl().getZametki();
      log(zametki.length.toString());
      emit(ZametkiFetchedState(zametki));
    } catch (error) {
      message = "Не уадалось загрузить данные";
      emit(ZametkiErrorState());
    }
  }
}
