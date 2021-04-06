part of 'datainput_bloc.dart';

@immutable
abstract class DatainputEvent {
  const DatainputEvent();
}

class TextChanged extends DatainputEvent {
  final String text;

  TextChanged(this.text);
}
