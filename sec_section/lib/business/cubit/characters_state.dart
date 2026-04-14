part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

class charachtersLoaded extends CharactersState {
  final List<CharachterModel> charachters;
  charachtersLoaded(this.charachters);
  
}