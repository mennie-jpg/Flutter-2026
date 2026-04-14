import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sec_section/data/models/charachters.dart';
import 'package:sec_section/data/repository/charachters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharachtersRepository charachtersRepository ;
  List<CharachterModel> charachters = [];
  CharactersCubit(this.charachtersRepository) : super(CharactersInitial());

   getAllCharachters (){
     charachters = charachtersRepository.getAllCharacters();
     emit(charachtersLoaded(charachters));
  }


}
