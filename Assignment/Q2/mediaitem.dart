
abstract class mediaitem {
  String? title;
  String? artist;
  
  mediaitem(this.title, this.artist);
}

abstract class Playable {
  void play();
}