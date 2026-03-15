class CharacterModel {
  final String name;
  final String image;
  final String email;
  final String phone;
  final List<String> gallery;
  final List<String> hobbies;

  CharacterModel({
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.gallery,
    required this.hobbies,
  });
}

List<CharacterModel> gumballCharacters = [
  CharacterModel(
    name: 'Anais',
    image: 'images/anais.png',
    email: 'the_genius@elmore.edu',
    phone: '+1-555-IQ-180',
    gallery: ['images/A1.jpeg', 'images/A2.jpeg'],
    hobbies: ['Solving complex equations', 'Brain teasers', 'Deep reading'],
  ),
  CharacterModel(
    name: 'Carrie',
    image: 'images/carrie.png',
    email: 'lonely_ghost@void.com',
    phone: '000-000-6666',
    gallery: ['images/C1.jpeg', 'images/C2.jpeg'],
    hobbies: ['Listening to Emo music', 'Scaring people', 'Haunting abandoned places'],
  ),
  CharacterModel(
    name: 'Darwin',
    image: 'images/darwin.png',
    email: 'best_friend@ocean.com',
    phone: '+2-012-9097',
    gallery: ['images/D1.jpeg', 'images/D2.jpeg'],
    hobbies: ['Spreading positivity', 'Fast swimming', 'Helping friends'],
  ),
  CharacterModel(
    name: 'Gumball',
    image: 'images/gumball.png',
    email: 'trouble_maker@elmore.net',
    phone: '+1-555-4631',
    gallery: ['images/G1.jpeg', 'images/G2.jpeg'],
    hobbies: ['Pulling pranks', 'Video games', 'Avoiding chores'],
  ),
    CharacterModel(
    name: 'Tobias',
    image: 'images/tobias.png',
    email: 'the_coolest_guy@rich.com',
    phone: '+1-555-I-AM-RICH',
    gallery: ['images/T1.jpeg', 'images/T2.jpeg'],
    hobbies: ['Playing basketball', 'Bragging about money', 'Fashion'],
  ),
  CharacterModel(
    name: 'Nicole',
    image: 'images/nicole.png',
    email: 'boss_mom@rainbow.factory',
    phone: '+1-555-ANGRY-MOM',
    gallery: ['images/N1.jpeg', 'images/N2.jpeg'],
    hobbies: ['Practicing Karate', 'Organizing the house', 'Winning challenges'],
  ),
  CharacterModel(
    name: 'Penny',
    image: 'images/penny.png',
    email: 'sweet_shell@elmore.high',
    phone: '+1-555-2323',
    gallery: ['images/P1.jpeg', 'images/P2.jpeg'],
    hobbies: ['Acting', 'Cheerleading', 'Hanging out with friends'],
  ),
  CharacterModel(
    name: 'Richard',
    image: 'images/richard.png',
    email: 'couch_potato@nap.sleep',
    phone: 'No-Phone-Too-Lazy',
    gallery: ['images/R1.jpeg', 'images/R2.jpeg'],
    hobbies: ['Eating', 'Long naps', 'Avoiding work'],
  ),
  CharacterModel(
    name: 'Sarah',
    image: 'images/sarah.png',
    email: 'fangirl_99@waterson_stalker.com',
    phone: '+1-555-9579',
    gallery: ['images/S1.jpeg', 'images/S2.jpeg'],
    hobbies: ['Writing fan fiction', 'Drawing comics', 'Stalking the Wattersons'],
  ),

];