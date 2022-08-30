class Profile {
  final name;
  final imageUrl;
  Profile(this.name, this.imageUrl);
  static List<Profile> generatProfile() {
    return [Profile('Keat Buntoeun', 'images/buger.png')];
  }
}
