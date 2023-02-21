part of 'models.dart';

class Destination extends Equatable {
  final int id;
  final String title;
  final String image;
  final String description;
  final int price;
  final String duration;

  const Destination(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.duration});

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, image, description, price, duration];
}

List<Destination> mockDestination = [
  const Destination(
      id: 1,
      title: 'Tokyo, Japan',
      image: 'assets/japan.jpg',
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      price: 310,
      duration: '7 Days'),
  const Destination(
      id: 2,
      title: 'Paris, France',
      image: 'assets/france.jpg',
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      price: 310,
      duration: '7 Days'),
  const Destination(
      id: 3,
      title: 'Chaws, Italy',
      image: 'assets/italia.jpg',
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      price: 310,
      duration: '7 Days'),
];
