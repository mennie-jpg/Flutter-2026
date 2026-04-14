class CharachterModel {
  late String name;
  late String image;
  late String email;
  late String phone;
  late List<String> gallery;
  late List<String> hobbies;
  static CharachterModel  larryObject = CharachterModel(
  name: 'Larry',
  image: 'images/me.png', 
  email: 'help_us_Larry@no.com',
  phone: '01012345678',
  gallery: [
    'images/me1.jpeg', 
    'images/me2.jpeg'
  ],
  hobbies: [
    'Taking 5-minute naps',
    'Counting his paychecks',
    'Meditating to stay calm',
  ],
);

  CharachterModel({
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.gallery,
    required this.hobbies,
  });

    CharachterModel.fromJson(Map<String,dynamic> jsonData){
    name = jsonData['name'];
    image = jsonData['image'];
    email = jsonData['email'];
    phone = jsonData['phone'];
    gallery = jsonData['gallery'];
    hobbies = jsonData['hobbies'];


}
}


