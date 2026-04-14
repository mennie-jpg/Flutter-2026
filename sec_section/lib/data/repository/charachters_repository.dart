import 'package:sec_section/data/models/charachters.dart';
import 'package:sec_section/data/web_services/charachters_web_service.dart';

class CharachtersRepository {
  final CharachtersWebService charactersWebService ;
  CharachtersRepository( this.charactersWebService);

  List<CharachterModel> getAllCharacters(){
    final charachters = charactersWebService.gumballCharacters;
    List<CharachterModel> result = charachters.map((character)=> CharachterModel.fromJson(character)).toList();
    return result;
  }


}