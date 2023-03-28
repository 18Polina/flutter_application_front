part of 'zametka_cubit.dart';

@immutable
abstract class ZametkiState{}

class ZametkiInitial extends ZametkiState{}

class ZametkiFetchedState extends ZametkiState
{
  final List<Zametki> zametki;

  ZametkiFetchedState(this.zametki);
}

class ZametkiErrorState extends ZametkiState
{

}