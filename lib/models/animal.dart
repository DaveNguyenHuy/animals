import 'package:just_audio/just_audio.dart';

class Animal {
  Animal({
    required this.tag,
    required this.voice,
    required this.label,
    required this.avatar,
  });

  AudioPlayer player = AudioPlayer();
  String tag;
  String voice;
  String label;
  String avatar;

  void play() async {
    await player.setAsset(voice);
    player.play();
  }
}

List<Animal> animals = [
  Animal(
    tag: 'dog',
    voice: 'audios/dog.mp3',
    label: 'Con Chó',
    avatar: 'images/dog_icon.png',
  ),
  Animal(
    tag: 'cat',
    voice: 'audios/cat.mp3',
    label: 'Con Mèo',
    avatar: 'images/cat_icon.png',
  ),
  Animal(
    tag: 'duck',
    voice: 'audios/duck.mp3',
    label: 'Con Vịt',
    avatar: 'images/duck_icon.png',
  ),
  Animal(
    tag: 'chicken',
    voice: 'audios/chicken.mp3',
    label: 'Con Gà',
    avatar: 'images/chicken_icon.png',
  ),
  Animal(
    tag: 'cow',
    voice: 'audios/cow.mp3',
    label: 'Con Bò',
    avatar: 'images/cow_icon.png',
  ),
  Animal(
    tag: 'crab',
    voice: 'audios/crab.mp3',
    label: 'Con Cua',
    avatar: 'images/crab_icon.png',
  ),
  Animal(
    tag: 'pig',
    voice: 'audios/pig.mp3',
    label: 'Con Lợn',
    avatar: 'images/pig_icon.png',
  ),
  Animal(
    tag: 'fish',
    voice: 'audios/fish.mp3',
    label: 'Con Cá',
    avatar: 'images/fish_icon.png',
  ),
];
