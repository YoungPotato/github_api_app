part of 'datainput_bloc.dart';

@immutable
abstract class DatainputState {}

class CompleteInputState extends DatainputState {
  final String text;

  CompleteInputState(this.text);
}
