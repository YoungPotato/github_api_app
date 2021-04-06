import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'datainput_event.dart';
part 'datainput_state.dart';

class DatainputBloc extends Bloc<DatainputEvent, DatainputState> {
  DatainputBloc() : super(CompleteInputState(""));

  @override
  Stream<DatainputState> mapEventToState(
    DatainputEvent event,
  ) async* {
    if (event is TextChanged) {
      final String searchData = event.text;
      yield CompleteInputState(searchData);
    }
  }
}
