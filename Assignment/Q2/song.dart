import 'mediaitem.dart';
import 'logger.dart';

class Song extends mediaitem with Logger implements Playable {
  
  Song(String title, String artist) : super(title, artist);
  
  @override
  void play() {
    logInfo('Playing song: $title by $artist');
  }
}