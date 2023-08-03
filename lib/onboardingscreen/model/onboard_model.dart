class OnboardModel {
  String header;
  String image;
  String description;

  OnboardModel(
      {required this.description, required this.header, required this.image});
}

final onboardAssets = [
  OnboardModel(
    header: 'FOR THE MINIMALISTS',
    description: 'Matching Simplicity and comfort\nfor your daily basic needs',
    image: 'assets/onboard1.png',
  ),
  OnboardModel(
    header: 'HUSTLE IN STYLE',
    description: 'Matching Simplicity and comfort\nfor your daily basic needs',
    image: 'assets/onboard2.png',
  ),
  OnboardModel(
    header: 'EXCLUSIVE SPORTS WEAR',
    description: "Matching Simplicity and comfort\nfor your daily basic needs",
    image: 'assets/onboard3.png',
  ),
];
